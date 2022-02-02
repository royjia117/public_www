%% Leroy Jia
%% APMA 0160 HW 1
%% Ask friendly questions and record information in a .txt file.

clear; clc; close all;
fprintf(strcat('Greetings, friend. Welcome to APMA 0160!\nI have',...
' a few short questions for you.\nThis will only take a minute.\n\n'));

first_name = '';
while strcmp(first_name,'')
    first_name = input('First of all, what should I call you?\n','s');
end
fprintf(['\nNice to meet you, ',first_name,'!\n\n']);

last_name = '';
while strcmp(last_name,'')
    last_name = input('And what is your last name?\n','s');
end
fprintf('\nGood to know. I will make a note of that.\n\n');

year = '';
while strcmp(year,'')
    year = input('Tell me a little about yourself. What year are you?\n','s');
end

major = '';
while strcmp(major,'')
	major = input('\nCool! And what is your major?\n','s'); 
end
if strcmpi(major,'apma') || strcmp(major,'applied math') || ...
        strcmp(major,'applied mathematics')
    fprintf('\nNice! I also study applied math!\n\n');
elseif strcmpi(major,'math') || strcmpi(major,'mathematics')
    fprintf('\nNice! I study applied math!\n\n');
elseif strcmpi(major,'phys') || strcmpi(major,'physics')
    fprintf('\nNice! I do physics research!\n\n');
elseif strcmpi(major,'engn') || strcmpi(major,'engineering')
    fprintf('\nNice! I do research with an engineering professor!\n\n');
else
    fprintf('\nSounds interesting!\n\n');
end

location = '';
while ~strcmpi(location,'y') && ~strcmpi(location,'n')
   location = input('So, are you from the United States? Type y or n.\n','s') ;
end
if strcmpi(location,'y')
   location = input('\nWhich state/city?\n','s'); 
else
   location = input('\nWhich country are you from?\n','s');
end
if strcmpi(location,'china') || strcmpi(location,'taiwan')
    fprintf('\nWo ye shi zhongguoren. Fumu shi ShanXi ren.\n\n');
elseif strcmpi(location,'japan')
    fprintf('\nSugoi! Nihon ni iku koto ga arimasu. Nihongo ga manabitaiyo!\n\n');
elseif strcmpi(location,'canada')
    fprintf('\nI''ve been to Canada before. It''s a beautiful country!\n\n');
elseif strcmpi(location,'ga') || strcmpi(location,'georgia') || strcmpi(location,'atlanta')
    fprintf('\nWhat a coincidence! I''m from Georgia as well.\n\n');
else
    fprintf(['\nWow! I''d love to visit ',location,' someday!\n\n']);
end

hobby = '';
while strcmp(hobby,'')
   hobby = input('What is one thing you like to do for fun?\n','s'); 
end
fprintf('\nSounds fun! My hobby is origami. It''s relaxing.\n');
fprintf('I also enjoy watching movies. I don''t watch many though.\n');

movie = '';
while strcmp(movie,'')
    movie = input('Hey, what movie do you recommend I watch?\n','s');
end
fprintf(['\nAlright, I''ll add ',movie,' to my list!\n\n']);

linear_algebra = '';
while ~strcmpi(linear_algebra,'y') && ~strcmpi(linear_algebra,'n')
   linear_algebra = input('Do you have experience with linear algebra? Type y or n.\n','s'); 
end
if strcmpi(linear_algebra,'y')
   fprintf('\nAlright, great! That knowledge will  come in handy in this class.\n\n');
else
   fprintf('\nDon''t worry about it. It''s not a formal prerequisite.\n\n'); 
end

diff_eq = '';
while ~strcmpi(diff_eq,'y') && ~strcmpi(diff_eq,'n')
   diff_eq = input('Do you have experience with differential equations? Type y or n.\n','s') ;
end
if strcmpi(diff_eq,'y')
   fprintf('\nExcellent! You''re in good shape!\n\n');
else
   fprintf('\nWell, we''ll review differential equations. No sweat.\n\n'); 
end

additional_info = '';
while strcmp(additional_info,'')
    additional_info = input('Alright, let''s finish up. Any additional info I shoud know?\n','s');
end
fprintf('\nThanks for letting me know.\n\n');

%% write answers to text file
fileID = fopen([first_name,'_',last_name,'.txt'],'w');
fprintf(fileID,['Preferred name: ',first_name,'\r\n']);
fprintf(fileID,['Last name: ',last_name,'\r\n']);
fprintf(fileID,['Year: ',year,'\r\n']);
fprintf(fileID,['Major: ',major,'\r\n']);
fprintf(fileID,['Originally from: ',location,'\r\n']);
fprintf(fileID,['Hobby: ',hobby,'\r\n']);
fprintf(fileID,['Movie recommendation: ',movie,'\r\n']);
fprintf(fileID,['Linear algebra? ',linear_algebra,'\r\n']);
fprintf(fileID,['Differential equations? ',diff_eq,'\r\n']);
fprintf(fileID,['Additional info: ',additional_info,'\r\n']);
fclose(fileID);

fprintf(['Alright,I''ve recorded this information in ',first_name,'_',last_name,'.txt!\n']);
fprintf('Look through it and see if the information is correct.\n');
fprintf('If not, run this program again and answer everything accurately.\n')
fprintf('If everything looks good, save the file and submit it\n');
fprintf('along with your other problems from HW 1.\n')
fprintf(['Thanks for your time, and I''ll see you in class, ',first_name,'!\n']);












