CREATE DATABASE universidad;
USE universidad;

CREATE TABLE material(
	identificador_m int NOT NULL PRIMARY KEY,
	titulo VARCHAR(20),
    descripcion VARCHAR(300),
    archivos VARCHAR(20)
    );
    
CREATE TABLE curso(
	identificador_c int NOT NULL PRIMARY KEY,
    nombre_c varchar(30),
    categoria VARCHAR(20),
    ruta_url VARCHAR(200),
	precio INT
);

CREATE TABLE tarea(
	identificador_t int NOT NULL PRIMARY KEY,
    nombre_t varchar(30),
    descripcion_t varchar(300),
    fechacracion datetime,
    fechaentrega datetime,
    puntaje int,
    archivo varchar(20)
);	

CREATE TABLE estudiante(
	documentoidentidad_e int NOT NULL PRIMARY KEY,
    nombrecompleto varchar(40),
    correo_e varchar(40),
    genero varchar(9),
    correoestudiantil_e varchar(40),
    contraseña varchar(40)
);

CREATE TABLE administrador(
	identificadoradmin INT NOT NULL PRIMARY KEY,
    nombreadmin char,
    correo char,
    correoinstitucional char,
    contraseña char
);

CREATE TABLE profesor(
	documentoidentidad INT NOT NULL PRIMARY KEY,
    nombrecompleto char,
    correopersonal char,
    telefono int,
    areaprincipal char,
    areaalternativa char,
    correoinstitucional_p char,
    contraseña_p char
);

CREATE TABLE foro(
	identificador_f INT NOT NULL PRIMARY KEY,
    nombre_f char,
    descripcion_f char,
    fechacreacion datetime,
    fechatermina datetime
);

CREATE TABLE mensaje(
	identificador_men INT NOT NULL PRIMARY KEY,
    nombre_men char,
    descripcion_men char,
	identificador_f INT,
		FOREIGN KEY(identificador_f) REFERENCES foro(identificador_f)
        ON UPDATE RESTRICT ON DELETE RESTRICT
);

INSERT INTO estudiante (documentoidentidad_e, nombrecompleto, correo_e, genero, correoestudiantil_e, contraseña) VALUES ('101', 'Juan Diego Llorente Ortega', 'shokolisto@gmail.com', 'masculino', 'jdllorento@eafit.edu.co', '12345');
INSERT INTO estudiante (documentoidentidad_e, nombrecompleto, correo_e, genero, correoestudiantil_e, contraseña) VALUES ('102', 'Daniela Arango Gutiérrez', 'akdsjna@gmail.com', 'femenino', 'darango@eafit.edu.co', '123456');
INSERT INTO estudiante (documentoidentidad_e, nombrecompleto, correo_e, genero, correoestudiantil_e, contraseña) VALUES ('103', 'Nadir Merino Madera', 'Nadir@gmail.com', 'masculino', 'nmedino@eafit.edu.co', '2345');
INSERT INTO estudiante (documentoidentidad_e, nombrecompleto, correo_e, genero, correoestudiantil_e, contraseña) VALUES ('104', 'Federico Carrero Casas', 'fedecarrero@gmail.com', 'masculino', 'fcarreroc@eafit.edu.co', '7235687');
INSERT INTO estudiante (documentoidentidad_e, nombrecompleto, correo_e, genero, correoestudiantil_e, contraseña) VALUES ('105', 'Bianca Osorio', 'Bianca@gmail.com', 'femenino', 'bosorio@eafit.edu.co', '7468');

INSERT INTO material (identificador_m, titulo, descripcion, archivos) VALUES ('1231', 'guia_semana12', 'En esta presentación se encuentra la información presentada en la clase de la semana 12', 'sem12.pptx');
INSERT INTO material (identificador_m, titulo, descripcion, archivos) VALUES ('24799', 'Taller_1', 'En el archivo se encuentran los ejercicios a entregar para la nota del taller 1' 'taller1.pdf');

INSERT INTO curso (identificador_c, nombre_c, categoria, ruta_url, precio) VALUES ('01243', 'Física', 'Ciencias aplicadas', 'www.eafit://cursos/fisica.com', '1150000');
INSERT INTO curso (identificador_c, nombre_c, categoria, ruta_url, precio) VALUES ('02346', 'Caclculo', 'Ciencias aplicadas', 'www.eafit://cursos/calculo.com', '1200000');

INSERT INTO tarea (identificador_t, nombre_t, descripcion_t, fechacreacion, fechaentrega, puntaje, archivo) VALUES ('13415', 'Taller', NULL, '10/04/2023', '20/04/2023', '10', 'taller.pdf');
INSERT INTO tarea (identificador_t, nombre_t, descripcion_t, fechacreacion, fechaentrega, puntaje, archivo) VALUES ('18234', 'practica', 'Tarea para practicar los temas del próximo parcial, quien la envíe obtiene una bonificación', '15/04/2023', '30/04/2023', '5', 'practica.pdf');

INSERT INTO administrador (identificadoradmin, nombreadmin, correo, correoinstitucional, contraseña) VALUES ('1133', 'samuel David Restrepo', 'samrestre@gmai.com', 'srestrepo@eafit.edu.co', '74661238');

INSERT INTO profesor (documentoidentidad, nombrecompleto, correopersonal, telefono, areaprincipal, areaalternativa, correoinstitucional_p, contraseña_p) VALUES ('18723490', 'Yoe Herrera Arroyo', 'XxyoexX@gmail.com', '311284400', 'matematicas', 'fisica', 'yherreraa@eafit.edu.co', '487387');
INSERT INTO profesor (documentoidentidad, nombrecompleto, correopersonal, telefono, areaprincipal, areaalternativa, correoinstitucional_p, contraseña_p) VALUES ('18384019', 'Guillermo Alberto Palacio', 'guillermoa@gmail.com', '3126212532', 'fisica', 'calculo', 'gpalacio@eafit.edu.co', '3x10^8');

INSERT INTO foro (identificador_f, nombre_f, descripcion_f, fechacreacion, fechatermina) VALUES ('28732', 'Dudas', 'Este foro está destinado a que se hagan preguntas y estas sean respondidas por el profesor', '23/02/2023', '30/05/2023');
INSERT INTO foro (identificador_f, nombre_f, descripcion_f, fechacreacion, fechatermina) VALUES ('23988', 'Avisos', 'Este foro está destinado a comunicar fechas importantes o cancelaciones de sesiones', '23/02/2023', '30/05/2023');

INSERT INTO mensaje (identificador_men, monbre_men, descripcion_men, identificador_f) VALUES ('328758', 'Duda ley de Snell', 'Tengo una duda respecto a la ley de Snell, ¿en todos los casos el ángulo de incidencia es igual al de refracción? ¿o hay alguna excepción?', '28732');
INSERT INTO mensaje (identificador_men, monbre_men, descripcion_men, identificador_f) VALUES ('325789', 'Consulta sesión lunes', 'Profesor, ¿entonces la sesión del lunes sí fue cancelada?', '23988');
