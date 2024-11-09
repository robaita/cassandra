// Execute queries in batch to ensure atomicity 
//A logged batch is the default batch type. It ensures that the batch can be re-executed in case of a failure, maintaining consistency by writing the batch to a batch log.
BEGIN BATCH
INSERT INTO students (id, student_name , age) VALUES (uuid(), 'Ankit', 33);
INSERT INTO students (id, student_name , age) VALUES (uuid(), 'Anamika' , 34.5);
APPLY BATCH;

//An UNLOGGED batch behaves similarly to a normal batch but without the overhead of a batch log.

BEGIN UNLOGGED BATCH
DELETE student_name FROM students 
WHERE id = d5934515-628a-4731-b038-bf5f73ff0090;
DELETE FROM students 
WHERE id = db62d222-896a-4c6e-8162-fb051827c89f;
APPLY BATCH;