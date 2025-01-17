PGDMP         )                 x            DB_DATOS    9.6.20    9.6.20     N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            Q           1262    16393    DB_DATOS    DATABASE     �   CREATE DATABASE "DB_DATOS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE "DB_DATOS";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            R           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            S           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16396    tbl_usuario    TABLE        CREATE TABLE public.tbl_usuario (
    us_id integer NOT NULL,
    us_nombre character varying(50),
    us_apellido character varying(50),
    us_nacimiento date,
    us_genero character varying(10),
    us_ingreso timestamp with time zone DEFAULT now()
);
    DROP TABLE public.tbl_usuario;
       public         postgres    false    3            �            1259    16394    tbl_usuario_us_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tbl_usuario_us_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_usuario_us_id_seq;
       public       postgres    false    186    3            T           0    0    tbl_usuario_us_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_usuario_us_id_seq OWNED BY public.tbl_usuario.us_id;
            public       postgres    false    185            �           2604    16399    tbl_usuario us_id    DEFAULT     v   ALTER TABLE ONLY public.tbl_usuario ALTER COLUMN us_id SET DEFAULT nextval('public.tbl_usuario_us_id_seq'::regclass);
 @   ALTER TABLE public.tbl_usuario ALTER COLUMN us_id DROP DEFAULT;
       public       postgres    false    186    185    186            K          0    16396    tbl_usuario 
   TABLE DATA               j   COPY public.tbl_usuario (us_id, us_nombre, us_apellido, us_nacimiento, us_genero, us_ingreso) FROM stdin;
    public       postgres    false    186   L       U           0    0    tbl_usuario_us_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_usuario_us_id_seq', 7, true);
            public       postgres    false    185            �           2606    16401    tbl_usuario tbl_usuario_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT tbl_usuario_pkey PRIMARY KEY (us_id);
 F   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT tbl_usuario_pkey;
       public         postgres    false    186    186            K   �   x���;�0��9E.��q�P�!�����@��E} �[q.Fa��ɋ���Jn����R!f
IB�;B�i,I:G�-%�Yc����s�C�
��4Jp����CEV�91,J>�|�)�Em
K��a��4�F����75�|�iW���} _Kj���^�92����l����	G9W�     