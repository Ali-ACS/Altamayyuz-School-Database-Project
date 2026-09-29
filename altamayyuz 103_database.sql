-- =====================================================================
-- مشروع قاعدة بيانات التميز (Altamayyuz) - المرحلة الثالثة (SQL 103)
-- الوصف: إنشاء العلاقات المتقدمة، الـ Stored Procedures، الـ Views، والـ Indexes
-- =====================================================================

-- تحديد قاعدة البيانات المستخدمة
USE altamayyuz;

-- ---------------------------------------------------------------------
-- 1. إنشاء العلاقات وجداول الربط (Relationships & Junction Tables)
-- ---------------------------------------------------------------------

-- حذف الجداول الوسيطة إن وجدت مسبقاً لضمان نظافة التنفيذ
DROP TABLE IF EXISTS teacher_student_relation;
DROP TABLE IF EXISTS student_material_relation;

-- إنشاء جدول وسيط لربط المعلمين بالطلاب (علاقة Many-to-Many)
CREATE TABLE teacher_student_relation (
    Teacher_ID INT,
    Student_ID INT,
    PRIMARY KEY (Teacher_ID, Student_ID), -- مفتاح أساسي مركب لمنع التكرار
    FOREIGN KEY (Teacher_ID) REFERENCES teachers(Teacher_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students_2006(Student_ID)
);

-- إنشاء جدول وسيط لربط الطلاب بالمحاضرات/المواد الدراسية (علاقة Many-to-Many)
CREATE TABLE student_material_relation (
    Student_ID INT,
    Material_ID INT,
    PRIMARY KEY (Student_ID, Material_ID), -- مفتاح أساسي مركب لربط الطالب بالمادة
    FOREIGN KEY (Student_ID) REFERENCES Students_2006(Student_ID),
    FOREIGN KEY (Material_ID) REFERENCES materials(Material_ID)
);

-- ---------------------------------------------------------------------
-- 2. الإجراءات المخزنة (Stored Procedures)
-- ---------------------------------------------------------------------

-- حذف الـ Procedure القديم إن وجد لتحديثه
DROP PROCEDURE IF EXISTS student_info;

-- تغيير الرمز الفاصل مؤقتاً لكتابة إجراء متكامل
DELIMITER //

-- إنشاء إجراء مخزن لجلب البيانات المشتركة وأسماء الطلاب والمواد عبر الـ JOIN
CREATE PROCEDURE student_info()
BEGIN
    SELECT 
        s.Student_ID,
        s.Student_Name,
        s.Academic_Level,
        s.track,
        m.Material_ID,
        m.Material_Name
    FROM Students_2006 s
    JOIN student_material_relation sm ON s.Student_ID = sm.Student_ID
    JOIN materials m ON sm.Material_ID = m.Material_ID;
END //

DELIMITER ;

-- استدعاء الـ Procedure لعرض النتائج
CALL student_info();

-- ---------------------------------------------------------------------
-- 3. العروض الافتراضية (Views)
-- ---------------------------------------------------------------------

-- حذف الـ View القديم إن وجد
DROP VIEW IF EXISTS teacher_info;

-- إنشاء View لعرض بيانات المعلمين والمكاتب والمواد المرتبطة بهم
CREATE VIEW teacher_info AS
SELECT 
    t.Teacher_Name,
    t.Teacher_Office_Number,
    m.Material_Name
FROM teachers t
JOIN materials m ON t.Teacher_ID = m.Teacher_ID;

-- استعراض بيانات الـ View
SELECT * FROM teacher_info;

-- حذف الـ View بناءً على متطلبات المشروع
DROP VIEW IF EXISTS teacher_info;

-- ---------------------------------------------------------------------
-- 4. الفهارس لتحسين الأداء (Indexes)
-- ---------------------------------------------------------------------

-- إنشاء فهرس (Index) على حقل أسماء الطلاب لتسريع عمليات البحث أبجديّاً
CREATE INDEX idx_student_name ON Students_2006(Student_Name);

-- عرض الفهارس الخاصة بجدول الطلاب للتأكد من إنشائها
SHOW INDEX FROM Students_2006;

-- حذف الـ Index بناءً على متطلبات المشروع النهائية
ALTER TABLE Students_2006 DROP INDEX idx_student_name;