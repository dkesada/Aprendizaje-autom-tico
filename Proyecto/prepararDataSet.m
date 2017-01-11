# Adapta el data set para poder ser procesado.
function [file] = prepararDataSet(file)
 
 # Adapto el final de las lineas tanto de dataSet como de test
 file = regexprep(file, 'K', 'K, ');
 file = regexprep(file, '\.', '');
 file = regexprep(file, '\n', '');
 # Cambio las ? por 0's. Tengo que escaparlas con la barra
 file = regexprep(file, '\?', '0');
 # Workclass
 file = regexprep(file, 'Private', '1');
 file = regexprep(file, 'Self-emp-not-inc', '2');
 file = regexprep(file, 'Self-emp-inc', '3');
 file = regexprep(file, 'Federal-gov', '4');
 file = regexprep(file, 'Local-gov', '5');
 file = regexprep(file, 'State-gov', '6');
 file = regexprep(file, 'Without-pay', '7');
 file = regexprep(file, 'Never-worked', '8');
 # Education. Este valor lo elimino, el siguiente valor es lo mismo pero numerico
 file = regexprep(file, 'Bachelors, ', '');
 file = regexprep(file, 'Some-college, ', '');
 file = regexprep(file, '11th, ', '');
 file = regexprep(file, 'HS-grad, ', '');
 file = regexprep(file, 'Prof-school, ', '');
 file = regexprep(file, 'Assoc-acdm, ', '');
 file = regexprep(file, 'Assoc-voc, ', '');
 file = regexprep(file, '9th, ', '');
 file = regexprep(file, '7th-8th, ', '');
 file = regexprep(file, '12th, ', '');
 file = regexprep(file, 'Masters, ', '');
 file = regexprep(file, '1st-4th, ', '');
 file = regexprep(file, '10th, ', '');
 file = regexprep(file, 'Doctorate, ', '');
 file = regexprep(file, '5th-6th, ', '');
 file = regexprep(file, 'Preschool, ', '');
 # Marital status
 file = regexprep(file, 'Married-civ-spouse', '1');
 file = regexprep(file, 'Divorced', '2');
 file = regexprep(file, 'Never-married', '3');
 file = regexprep(file, 'Separated', '4');
 file = regexprep(file, 'Widowed', '5');
 file = regexprep(file, 'Married-spouse-absent', '6');
 file = regexprep(file, 'Married-AF-spouse', '7');
 # Occupation
 file = regexprep(file, 'Tech-support', '1');
 file = regexprep(file, 'Craft-repair', '2');
 file = regexprep(file, 'Other-service', '3');
 file = regexprep(file, 'Sales', '4');
 file = regexprep(file, 'Exec-managerial', '5');
 file = regexprep(file, 'Prof-specialty', '6');
 file = regexprep(file, 'Handlers-cleaners', '7');
 file = regexprep(file, 'Machine-op-inspct', '8');
 file = regexprep(file, 'Adm-clerical', '9');
 file = regexprep(file, 'Farming-fishing', '10');
 file = regexprep(file, 'Transport-moving', '11');
 file = regexprep(file, 'Priv-house-serv', '12');
 file = regexprep(file, 'Protective-serv', '13');
 file = regexprep(file, 'Armed-Forces', '14');
 # Relationship
 file = regexprep(file, 'Wife', '1');
 file = regexprep(file, 'Own-child', '2');
 file = regexprep(file, 'Husband', '3');
 file = regexprep(file, 'Not-in-family', '4');
 file = regexprep(file, 'Other-relative', '5');
 file = regexprep(file, 'Unmarried', '6');
 # Race
 file = regexprep(file, 'White', '1');
 file = regexprep(file, 'Asian-Pac-Islander', '2');
 file = regexprep(file, 'Amer-Indian-Eskimo', '3');
 file = regexprep(file, 'Other', '4');
 file = regexprep(file, 'Black', '5');
 # Sex
 file = regexprep(file, 'Female', '1');
 file = regexprep(file, 'Male', '2');
 # Native-country
 file = regexprep(file, 'United-States', '1');
 file = regexprep(file, 'Cambodia', '2');
 file = regexprep(file, 'England', '3');
 file = regexprep(file, 'Puerto-Rico', '4');
 file = regexprep(file, 'Canada', '5');
 file = regexprep(file, 'Germany', '6');
 file = regexprep(file, 'Outlying-US\(Guam-USVI-etc\)', '7'); # Hay que escapar tambien los parentesis
 file = regexprep(file, 'India', '8');
 file = regexprep(file, 'Japan', '9');
 file = regexprep(file, 'Greece', '10');
 file = regexprep(file, 'South', '11');
 file = regexprep(file, 'China', '12');
 file = regexprep(file, 'Cuba', '13');
 file = regexprep(file, 'Iran', '14');
 file = regexprep(file, 'Honduras', '15');
 file = regexprep(file, 'Philippines', '16');
 file = regexprep(file, 'Italy', '17');
 file = regexprep(file, 'Poland', '18');
 file = regexprep(file, 'Jamaica', '19');
 file = regexprep(file, 'Vietnam', '20');
 file = regexprep(file, 'Mexico', '21');
 file = regexprep(file, 'Portugal', '22');
 file = regexprep(file, 'Ireland', '23');
 file = regexprep(file, 'France', '24');
 file = regexprep(file, 'Dominican-Republic', '25');
 file = regexprep(file, 'Laos', '26');
 file = regexprep(file, 'Ecuador', '27');
 file = regexprep(file, 'Taiwan', '28');
 file = regexprep(file, 'Haiti', '29');
 file = regexprep(file, 'Columbia', '30');
 file = regexprep(file, 'Hungary', '31');
 file = regexprep(file, 'Guatemala', '32');
 file = regexprep(file, 'Nicaragua', '33');
 file = regexprep(file, 'Scotland', '34');
 file = regexprep(file, 'Thailand', '35');
 file = regexprep(file, 'Yugoslavia', '36');
 file = regexprep(file, 'El-Salvador', '37');
 file = regexprep(file, 'Trinadad&Tobago', '38');
 file = regexprep(file, 'Peru', '39');
 file = regexprep(file, 'Hong', '40');
 file = regexprep(file, 'Holand-Netherlands', '41');
endfunction
