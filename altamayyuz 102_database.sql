-- =====================================================================
--                         SQL 102 مشروع قاعدة بيانات التميز الجزء الثاني 
-- =====================================================================

-- 1. تحديد واستخدام قاعدة البيانات المطلوبة
USE altamayyuz;


-- =====================================================================
-- القسم الأول: إنشاء الجداول الفرعية بناءً على الشروط (التصفية)
-- =====================================================================

-- إنشاء جدول للطلاب المتفوقين (الذين معدلهم التراكمي أعلى من 90)
CREATE TABLE high_achievers AS
SELECT * 
FROM Students_2006
WHERE Student_GPA > 90;

-- إنشاء جدول للطلاب غير المجتازين (الذين معدلهم التراكمي أقل من 60)
CREATE TABLE students_failed AS
SELECT * 
FROM Students_2006
WHERE Student_GPA < 60;


-- =====================================================================
-- القسم الثاني: الاستعلامات والبحث المتقدم واستخراج البيانات
-- =====================================================================

-- عرض أسماء الطلاب التي تبدأ بحرف A
SELECT Student_Name 
FROM Students_2006 
WHERE Student_Name LIKE 'A%';

-- عرض أسماء الطلاب التي تتكون أسمائهم من 4 خانات/حروف بالضبط
SELECT Student_Name 
FROM Students_2006 
WHERE Student_Name LIKE '____';

-- تطبيق الدوال التجميعية (AVG, MAX, MIN) على المعدل التراكمي مع تسمية واضحة
SELECT 
    AVG(Student_GPA) AS Average_GPA,
    MAX(Student_GPA) AS Maximum_GPA,
    MIN(Student_GPA) AS Minimum_GPA
FROM Students_2006;

-- حصر وعرض أسماء الطلاب المتفوقين في المستوى السادس الحاصلين على معدل 100
SELECT Student_Name, Academic_Level, Student_GPA 
FROM Students_2006 
WHERE Academic_Level = 6 
  AND Student_GPA = 100;

-- عرض الطلاب الموجودين في المستوى الأول وأعمارهم بين 15 و 16 سنة
SELECT * 
FROM Students_2006 
WHERE Academic_Level = 1 
  AND TIMESTAMPDIFF(YEAR, Student_Birth_Date, CURDATE()) BETWEEN 15 AND 16;

-- عرض عدد الطلاب الموجودين في المستوى الثاني
SELECT COUNT(*) AS Level_2_Student_Count 
FROM Students_2006 
WHERE Academic_Level = 2;

-- استعراض مسارات الطلاب في المدرسة بدون تكرار
SELECT DISTINCT track 
FROM Students_2006;

-- عرض أسماء المواد الدراسية بحيث تظهر الحروف بالكامل بالأحرف الكبيرة (Uppercase)
SELECT UPPER(Material_Name) AS Upper_Material_Name 
FROM materials;

-- عرض المتوسط الحسابي للمعدل التراكمي مع تقريبه لأقرب أصغر عدد (باستخدام FLOOR)
SELECT FLOOR(AVG(Student_GPA)) AS Rounded_Avg_GPA 
FROM Students_2006;


-- =====================================================================
-- القسم الثالث: عمليات التحديث والتعديل على البيانات (UPDATE)
-- =====================================================================

-- تبديل رموز الجنس (F إلى Female و M إلى Male) باستخدام الدوال النصية REPLACE
UPDATE Students_2006
SET Student_Gender = REPLACE(REPLACE(Student_Gender, 'M', 'Male'), 'F', 'Female')
WHERE Student_ID > 0;

-- تحديث المعدل التراكمي للطلاب الذين تقل معدلاتهم عن 60 بزيادتها 5 درجات
UPDATE Students_2006
SET Student_GPA = Student_GPA + 5
WHERE Student_GPA < 60 
  AND Student_ID > 0;