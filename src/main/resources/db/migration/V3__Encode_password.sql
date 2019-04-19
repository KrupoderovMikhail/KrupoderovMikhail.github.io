create extension if not exists pgcrypto;

update usr set pasword = crypt(password, gen_salt('bf', 8));