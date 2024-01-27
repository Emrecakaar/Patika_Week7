PGDMP                       |            rentacar    16.1    16.1     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16721    rentacar    DATABASE     �   CREATE DATABASE rentacar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE rentacar;
                postgres    false            �            1259    16722    book    TABLE     \  CREATE TABLE public.book (
    book_id integer NOT NULL,
    book_car_id integer NOT NULL,
    book_name text NOT NULL,
    book_idno text NOT NULL,
    book_mpno text NOT NULL,
    book_mail text,
    book_strt_date date NOT NULL,
    book_fnsh_date date NOT NULL,
    book_prc integer NOT NULL,
    book_note text,
    book_case text NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16779    book_book_id_seq    SEQUENCE     �   ALTER TABLE public.book ALTER COLUMN book_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.book_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16725    brand    TABLE     Z   CREATE TABLE public.brand (
    brand_id bigint NOT NULL,
    brand_name text NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    16774    brand_brand_id_seq    SEQUENCE     �   ALTER TABLE public.brand ALTER COLUMN brand_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brand_brand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16728    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    car_model_id integer NOT NULL,
    car_color text NOT NULL,
    car_km integer NOT NULL,
    car_plate text NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    16778    car_car_id_seq    SEQUENCE     �   ALTER TABLE public.car ALTER COLUMN car_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.car_car_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16731    model    TABLE     �   CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_brand_id integer NOT NULL,
    model_name text NOT NULL,
    model_type text NOT NULL,
    model_year text NOT NULL,
    model_fuel text NOT NULL,
    model_gear text NOT NULL
);
    DROP TABLE public.model;
       public         heap    postgres    false            �            1259    16777    model_model_id_seq    SEQUENCE     �   ALTER TABLE public.model ALTER COLUMN model_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16734    user    TABLE     �   CREATE TABLE public."user" (
    user_id bigint NOT NULL,
    user_name text NOT NULL,
    user_pass text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16741    user_user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �          0    16722    book 
   TABLE DATA           �   COPY public.book (book_id, book_car_id, book_name, book_idno, book_mpno, book_mail, book_strt_date, book_fnsh_date, book_prc, book_note, book_case) FROM stdin;
    public          postgres    false    215   s       �          0    16725    brand 
   TABLE DATA           5   COPY public.brand (brand_id, brand_name) FROM stdin;
    public          postgres    false    216           �          0    16728    car 
   TABLE DATA           Q   COPY public.car (car_id, car_model_id, car_color, car_km, car_plate) FROM stdin;
    public          postgres    false    217   E                   0    16731    model 
   TABLE DATA           u   COPY public.model (model_id, model_brand_id, model_name, model_type, model_year, model_fuel, model_gear) FROM stdin;
    public          postgres    false    218   �                  0    16734    user 
   TABLE DATA           J   COPY public."user" (user_id, user_name, user_pass, user_role) FROM stdin;
    public          postgres    false    219   !                  0    0    book_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.book_book_id_seq', 14, true);
          public          postgres    false    224                       0    0    brand_brand_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.brand_brand_id_seq', 9, true);
          public          postgres    false    221                       0    0    car_car_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_car_id_seq', 4, true);
          public          postgres    false    223                       0    0    model_model_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.model_model_id_seq', 8, true);
          public          postgres    false    222                       0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    220            e           2606    16783    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    215            g           2606    16767    brand brand_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (brand_id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    216            i           2606    16753    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    217            k           2606    16757    model model_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            postgres    false    218            m           2606    16740    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    219            �   �   x�U��� ���.mX�c/�����6�"c2���|H@pm�H�!�w==9XSd�%EY-��|?mh�8���/�h�!�}Sh��J�8o?,ގ�%�쵤&��?~��0�ʹ�O��du��Ro�/�      �   (   x�3�J�K,�)��t��2��M-JNMI-����� �{q      �   R   x��1� @ѹ=EO`�-6����q@ܼ�9D�����~���r%��6(���Q�~w
�u`�}���(�J��          a   x�U�=@@������]�1&��V���w4
��+QAs�M���)���i��Ӯ��:o���t5��2g�Q%����4������U����tdD� d�B            x�3�LL����4426�0�b���� O��     