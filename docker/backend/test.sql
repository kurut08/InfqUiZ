--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
-- Dumped by pg_dump version 16.2

-- Started on 2024-05-07 18:19:47 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16389)
-- Name: cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cards (
    category integer NOT NULL,
    id integer NOT NULL,
    answer character varying(255) NOT NULL,
    lang character varying(255) NOT NULL,
    question character varying(255) NOT NULL
);


ALTER TABLE public.cards OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16388)
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cards_id_seq OWNER TO postgres;

--
-- TOC entry 3366 (class 0 OID 0)
-- Dependencies: 215
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- TOC entry 218 (class 1259 OID 16398)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    category integer NOT NULL,
    id integer NOT NULL,
    answer_a character varying(255),
    answer_b character varying(255),
    answer_c character varying(255),
    answer_correct character varying(255) NOT NULL,
    lang character varying(255) NOT NULL,
    question character varying(255) NOT NULL
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16397)
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.questions_id_seq OWNER TO postgres;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 217
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- TOC entry 3208 (class 2604 OID 16392)
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 16401)
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- TOC entry 3358 (class 0 OID 16389)
-- Dependencies: 216
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cards (category, id, answer, lang, question) FROM stdin;
1	1	Funkcja wait() wstrzymuje działanie wątku, natomiast notify() wznawia jego działanie.	pl	Do czego służą metody wait() i notify()
1	2	Bottom-up apporachh to podejście do problemu poprzez realizację poszczególnych funkcjonalności i połączenie ich rezultatów. Jest realizowane w przypadku programowania obiektowego.	pl	Jakie podejście jest realizowane w przypadku programowania obiektowego?
1	3	boolean - 1 bit, byte - 1 bajt, char i short - 2 bajty, float i int - 4 bajty, long i double - 8 bajtów.	pl	Jaki typ pierwotny ma największy rozmiar?
1	4	Metoda isAlive() zwraca True dla wątków w stanie Runnable i Waiting, natomiast False dla wątków w stanach Terminated i Blocked.	pl	Jaką wartość zwróci metoda isAlive() dla wątku w stanie New Thread?
1	5	Słowo kluczowe final oznacza, że element jest niezmienny - także w przypadku dziedziczenia.	pl	Które słowo kluczowe służy do określenia niezmienności deklarowanego elementu?
1	6	Wykonując metodę setLayout z parametrem null, rezygnujemy z menadżera rozkładu.	pl	W jaki sposób zrezygnować z menadżera rozkładu w AWT i Swing?
1	7	Komponenty terminalne to komponenty, które nie zawierają innych komponentów.	pl	Co to są komponenty terminalne?
1	8	Przeładowanie metod polega na stworzeniu wariantów tej samej metody. To, który wariant zostanie wywołany zależy od przekazywanych parametrów.	pl	Od czego zależy przeładowanie metod?
1	9	Dwa wątki nie mogą nigdy mieć dostęp do tej samej metody w ramach tego samego obiektu.	pl	Czy dwa wątki mogą mieć dostęp do tej samej metody w ramach jednego obiektu?
1	10	Polimorfizm polega na przeładowywaniu metod - tworzeniu kilku wariantów tej samej metody, różniących się parametrami.	pl	Jaki mechanizm pozwala na implementację takich samych nazw dla różnych metod?
1	11	Gettery i settery to funkcje, których celem jest ustawienie i pobranie wartości prywatnej zmiennej.	pl	Co to są Gettery i Settery?
1	12	Char w Javie ma rozmiar 2 bajtów, czyli 16 bitów.	pl	Jaki rozmiar ma typ znakowy char w Javie 64 bitowej?
1	13	Komponenty ciężkie są realizowane poprzez użycie graficznych bibliotek GUI systemu operacyjnego. Komponenty lekkie są rysowane za pomocą kodu Javy.	pl	Od czego zależy wygląd komponentów lekkich?
1	14	Przy wielokrotnym dziedziczeniu i poliformizmie zawsze istnieje dostęp do metod nie finalnych z klas nadrzędnych.	pl	Przy wielokrotnym dziedziczeniu i takich samych nazwach (polimorfizm), zawsze istnieje dostęp do wszystkich
1	15	W Javie, podobnie jak w C i C++ nie ma tablic wielowymiarowych, a jedynie tablice tablic.	pl	Czym charakteryzuje się deklaracja tablicy w postaci tab[][]?
1	16	Rozrastanie interfejstu jest możliwe, ale nie powinno być stosowane - zmiany opublikowanych / wykorzystywanych interfejsów mogą powodować późniejsze problemy z kompatybilnością implementacji i wywołaniami.	pl	Zaznacz prawdziwe stwierdzenie na temat rozrastania interfejsów?
1	17	Tworząc wątek w Javie należy stworzyć klasę dziedziczącą po Thread lub implementującą interfejs Runnable oraz zawrzeć w niej funkcję run(), określającą wykonywane operacje.	pl	Jaka metoda w Javie pozwala na implementację funkcjonalności wątku?
1	18	Wątek można rozpocząć wywołując funkcję start() na obiekcie klasy wątku.	pl	Jaka metoda w Javie pozwala na uruchomienie watku?
1	19	Zdarzenia dzielą się na niskiego poziomu - związane z fizycznymi aspektami interfejsu, takimi jak kliknięcie myszy, albo wejście kursora na dany obszar, oraz semantyczne - sekwencje zdarzeń niskiego poziomu, np. wybranie konkretnej pozycji menu.	pl	Wybór pozycji z menu to zdarzenie typu
1	20	Dziedziczenie służy do powiązania klas ze wspólnymi elementami, np. klasa Kwadrat, która dziedziczy po klasie Prostokąt, która dziedziczy po klasie Figura.	pl	W jakim celu wykorzystywane jest dziedziczenie?
1	21	Pola i metody statyczne są metodami, które są tworzone na rzecz klasy, a nie obiektu. Innymi słowy, nie wymagają tworzenia instancji klasy.	pl	Co to są pola i metody statyczne? 
1	22	WORA to akronim przewodni języka Java. Oznacza on write once run anywhere - napisz raz, uruchom gdziekolwiek.	pl	Co oznacza akronim WORA?
1	23	Słowo kluczowe this oznacza autoreferencję - wskazanie na obecny obiekt.	pl	Co oznacza słowo kluczowy this?
1	24	Podanie błędnego adresu URL skutkuje wyrzuceniem wyjątku MalformedURLException.	pl	W przypadku błędnego adresu URL wyrzucony jest wyjątek:
1	25	Poprawna definicja konstruktora kopiującego to A(A a) {}. Parametrem przekazywanym do konstruktora klasy A jest inny obiekt typu A.	pl	Jaka jest poprawna definicja konstruktora kopiującego klasy A?
1	26	Domyślny menedżer rozkładu dla klasy JFrame to BorderLayout.	pl	Jaki jest domyślny menedżer rozkładu dla klasy JFrame?
1	27	W metodzie niestatycznej można bezpośrednio odwoływać się do pól statycznych - nie można tego wykonać w drugą stronę.	pl	Czy w metodzie niestatycznej można bezpośrednio odwoływać się do pól statycznych klasy?
1	28	Jedną z głównych zalet JavaFX względem Swing jest planowany rozwój - jest to produkt nowszy, wciąż wspierany i rozwijany.	pl	Zalety JavaFX w stosunku do Swing
1	29	Funkcja suspend() przenosi wątek do stanu nie wykonywany.	pl	Kiedy wątek przechodzi do stanu nie wykonywany?
1	30	Aby zaimplementować wielowątkowość należy stworzyć klasę dziedziczącą z klasy Thread lub implementującą interfejs Runnable.	pl	Do czego służy klasa Thread
1	31	Pakiety w Javie służą do grupowania powiązanych ze sobą klas, interfejsów i podpakietów.	pl	Co zapewniają pakiety w Javie?
1	32	W przypadku programowania zorientowanego obiektowo najważniejsze są dane.	pl	Co jest najistotniejsze w przypadku programowania zorientowanego obiektowo?
1	33	Java Foundation Classes (JFC) to grupa rozbudowanych komponentów GUI, służących od uproszczenia tworzenia aplikacji.	pl	Co oznacza skrót JFC?
1	34	W Javie są dwa słowa kluczowe, które nie pełnią żadnej funkcji - goto oraz const.	pl	Jakie słowo kluczowe w javie nie pełni żadnej funkcji?
1	35	W Javie tablice indeksowane sa od 0.	pl	Od jakiej wartości są indeksowane tablice w javie?
1	36	W Javie stworzenie nowego obiektu ma miejsce za pomocą słowa kluczowego new.	pl	Kiedy wykorzystywany jest operator new?
1	37	Klasa DatagramSocket reprezentuje socket służący do wysyłania i odbierania pakietów datagramowych.	pl	Do czego służy klasa DatagramSocket?
1	38	Do obsługi dat najlepiej wykorzystywać bibliotekę java.time	pl	Jakiej biblioteki należy używać do obsługi dat?
1	39	NullPointerException - wyjątek wyrzucany w przypadku, kiedy referencja, której próbujemy użyć, jest pusta.	pl	jaki wyjątek jest wyzwalany w przypadku odczytu z pustej refrencji?
1	40	Większość elementów graficznych w AWT dziedziczy bezpośrednio po klasie Component.	pl	Jaka klasa jest nadrzędna bezpośrednio dla elementów graficznych w AWT
1	41	Aby zadeklarować zmienną, należy użyć składni <typ_zmiennej> <nazwa_zmiennej>	pl	Jak wygląda poprawna deklaracja zmiennej o typie ciągu znaków?
1	42	Do sprawdzenia, czy zmienna typu String jest pusta, używa się funkcji isEmpty().	pl	Która metoda nie występuje w klasie String?
1	43	Wszystkie pola w enum są jednocześnie public, static oraz final.	pl	Czym się różni class od enum?
1	44	Modyfikatory dostępu w Javie to public, private, protected oraz default (użyty tylko, kiedy żaden inny nie jest wskazany).	pl	Który atrybut dostępu nie istnieje w Javie?
1	45	Funkcja acos() w Javie zwraca wartości od -1 do 1 typu double.	pl	Jaki typ zwróci funkcja acos(x)?
1	46	Aby wypisać coś w konsoli w Javie należy użyć System.out.print lub System.out.println.	pl	Ile istenieje metod System.out, by wypisać tekst w konsoli?
1	47	Aby uzyskać długość tablicy, korzystamy z pola length tej tablicy.	pl	Jak można sprawdzić długość tablicy integerów w Javie?
1	48	Typ Array jest składową java.util.	pl	W jakiej klasie znajduje się typ Array?
1	49	Aby zapisać liczbę w systemie ósemkowym, należy wykorzystać odpowiedni format literału, to znaczy dodać 0 na początku.	pl	Jak zapisać wartość w systemie ósemkowym?
1	50	Klasy adaptacyjne to kasy z pustymi metodami dla interfejsów. Pozwala to nam na wykorzystanie tylko tych metod interfejsów, które chcemy.	pl	Co to są klasy adaptacyjne?
2	51	Grafika dwuwymiarowa to inaczej grafika 2D (two dimentional).	pl	Grafikę dwuwymiarową określa się skrótem
2	52	Gimp to bezpłatny, otwartoźródłowy edytor grafiki rastrowej udostępniany na licencji GNU GPL. 	pl	Który z wymienionych programów jest na licencji GNU GPL?
2	53	Jedną z największych wad formatu GIF jest ograniczenie do 256 kolorów.	pl	Jaka jest największa wada rozszerzenia GIF?
2	54	Portable Network Graphics (PNG) to format grafiki rastrowej wspierający bezstratną kompresję.	pl	Które rozszerzenie oferuje bezstratną kompresję obrazu?
2	55	Format JFIF wykorzystuje kompresję JPG, co skutkuje stratą części danych.	pl	Które rozszerzenie oferuje stratną kompresję obrazu?
2	56	Kompresja stratna oznacza, że część danych oryginalnego pliku jest tracona w jej wyniku.	pl	Jakie są skutki kompresji stratnej?
2	57	Główną zaletą grafiki wektorowej jest to, że przechowywane nie są informacje o punktach, a o wektoarch - pozwala to na skalowanie do dowolnych rozdzielczości bez utraty jakości.	pl	Zalety grafiki wektorowej
2	58	Grafika rastrowa charakteryzuje się podatnością na obróbkę.	pl	Zalety grafiki rastrowej
2	59	Na chwilę obecną najpopularniejszą rozdzielczością formatku 16:9 jest 1920x1080.	pl	Jaka jest najpopularniejsza rozdzieloczość ekranu w formacie 16:9?
2	60	Obrazy grafiki wektorowej najczęściej zapisywane są w formacie SVG.	pl	Jaki jest format grafiki wektorowej?
2	61	RGB oznacza Red (czerwony), Green (zielony) i Blue (niebieski).	pl	W skład kolorów RGB wchodzą:
2	62	CMYK oznacza kolory Cyan (turkus), Magenta (magenta / fioletotwy), Yellow (żółty), Black (czarny).	pl	W skład kolorów CMYK nie wchodzi:
2	63	Grafika wektorowa znajduje zastosowanie między innymi w czcionkach - niezbędne jest, aby były one  czytelne niezależnie od rozdzielczości.	pl	Gdzie stosuje się grafikę wektorową?
2	64	Gimp to bezpłatny, otwartoźródłowy edytor grafiki rastrowej udostępniany na licencji GNU GPL. 	pl	GIMP to program do obrówki grafiki
2	65	Do wyświetlania obrazu na monitorzewykorzystuje się model barw RGB.	pl	Który model barw stosuje się do wyświetlania kolorów na monitorze komputera?
2	66	W drukarkach wykorzystuje się model barw CMYK.	pl	Który model braw stosuje się w drukarakch?
2	67	Rozdzielczość ekranu wyrażana jest w wymiarach podanych w pikselach.	pl	W czym wyrażana jest rozdzielczość ekranu?
2	68	PDF to format plików stworzony przez Adobe do prezentowania dokumentów zawierających formatowanie tekstu oraz zdjęcia, w sposób niezależny od oprogramowania, sprzętu i systemu operacyjnego.	pl	Który format nie jest formatem pliku graficznego?
2	69	3DS Max jest profesjonalnym programem do tworzenia grafiki i animacji 3D.	pl	Który program umożliwi edytowanie modelu 3D?
2	70	Paint jest wbudowanym prostym programem do edycji grafiki rastrowej 2D dołączonym do systemu Windows.	pl	Który program nie oferuje utworzenie animacji 3D?
2	71	Blender to darmowy, otwartoźródłowy program do edycji grafiki 3D, wydany na licencji GNU GPL.	pl	Który z wymienionych programów jest na licencji GNU GPL?
2	72	Visual Studio jest środowiskiem programistycznym wydanym przez firmę Microsoft.	pl	Który program nie jest silinikiem do tworzenia gier komputerowych?
2	73	Unity jest crossplatformowym silnikiem gier. Do momentu przekroczenia 100 tys. dolarów przychodu na rok jego wykorzystanie jest darmowe. Po przekroczeniu tego progu, koniecznie jest kupienie licencji.	pl	Czy Unity jest darmowe?
2	74	Obecnie jedynym wspieranym przez silnik Unity językiem jest C#.	pl	Jaki język jest używany w Unity?
2	75	Głównym językiem używanym w Unreal Engine jest C++.	pl	Jaki język jest używany w Unreal Engine?
2	76	Godot jest darmowym, otwartoźródłowym silnikiem gier.	pl	Który z wymienionych silników graficznych jest darmowy?
2	77	Format OBJ zawiera informacje o geometrii obiektów 3D.	pl	Który z wymienionych rozszerzeń umożliwia zapis plików grafiki 3D?
2	78	FLAC jest formatem audio powalającym na bezstratną kompresję.	pl	Które z wymienionych rozszrzeń nie umożliwia zapisu pliku grafiki 3D?
2	79	Times New Romat to czcionka kroju szeryfowego.	pl	Times New Roman jest jakim fontem?
2	80	Fonty bezszeryfowe to fonty pozbawione ozdobników w postaci szeryfów. Oznacza to, że końcówki znaków są proste.	pl	Co charaktetyzuje fonty bezszeryfowe?
2	81	Do czcionek bezszeryfowych należą między innymi Arial, Berdana, Trebuchet MS, Helvetice, Futura.	pl	Która czcionka jest bezszeryfowa?
2	82	Do czcionek szeryfowych należą między innymi Times New Roman, MS Serif, Lucida Fax, czy Courier New.	pl	Która czcionka jest szeryfowa?
2	83	SIL Open Font License to jedna z głównych licencji fontów, która pozwala na dołączanie czcionki w sprzedawanym produkcie.	pl	Która licencja umożliwia dowolne wykorzystanie czionki?
2	84	Do tworzenia shaderów w Unity wykorzystuje się ShaderLab, HLSL oraz GLSL.	pl	Jaki język shaderów nie obsługuje Unity?
2	85	W Unity rozróżniamy światło obszarowe, kierunkowe , spot light i point light.	pl	Jakie typy światła są niedostępne w unity?
2	86	Ambient Occlusion to metoda cieniowanie powierzchni obiektów w grafice 3D, polegająca na sterowaniu tłumieniem światła otoczenia.	pl	Metodą oświetlenia globalnego, która zwiększa realistyczność modeli poprzez sterowanie tłumieniem światła otoczenia wynikającym z obszarów okluzji. Czego dotyczy ta definicja?
2	87	Prefab to specjalny typ komponentu, który pozwala na zapisanie w pełni skonfigurowanych obiektów typu GameObject.	pl	Specjalny typ komponentu, który umożliwia zapisanie w pełni skonfigurowanych obiektów GameObjects w projekcie w celu ich ponownego użycia. O jakim komponenecie mowa?
2	88	Wierzchołek w grafice komputerowej to po angielsku Vertex.	pl	Wierzchołek w grafice komputerowej to
2	89	Krawędź w grafice komputerowej to po angielsku edge.	pl	Krawędź w grafice komputerowej to
2	90	Adobe Illustrator to edytor grafiki wektorowej firmy Adobe.	pl	Adobe Illustrator to program do obróbki grafiki:
3	91	Komenda perfmon systemu Windows pozwala na uruchomienie monitora wydajności.	pl	Za co odpowiada komenda perfmon w systemie Windows?
3	92	W systemie Linux, dyski podłączone z łączem SATA są oznaczane jako sdx, gdzie x oznacza kolejny dysk.	pl	Dysk twarty SATA w systemie Linux jest oznaczony jako 
3	93	Polecenie cd ~ w systemie Linux znacza przejście do katalogu domowego użytkownika.	pl	Co powduje komenda cd ~ w systemie Linux?
3	94	Polecenie tty w systemie Linux powoduje wyświetlenie nazwy terminala.	pl	Za co odpowiada polecenie tty w Linux?
3	95	Komenda ipconfig /flushdns pozwala na wyczyśczenie bufora nazw domenowych.	pl	Jaka komenda wyczyści bufor nazw domenowych?
3	96	Keylogger to typ złośliwego oprogramowania, które przychwytuje wciśnięte przyciski, w celu przechwycenia loginów, haseł i innych danych wrażliwych.	pl	Złośliwe oprogramowanie, które przechwytuje naciskane klawisze przez użytkownika to
3	97	Linuxowe polecenie chown służy do zmiany właściciela pliku.	pl	Za co odpowiada komenda chown w systemie Linux?
3	98	Wbudowany w system Windows program chkdsk używa się, aby naprawdić strukturę logiczną dysku.	pl	Kiedy używa się programu chkdsk?
3	99	Struktura dysku twardego dzieli się na (rosnąco) sektory, głowice i cylindry.	pl	Najmniejsza struktura dysku twardego to
3	100	NTFS (New Technology File System) to system plików systemu Windows NT (Windows 2000, XP i wszystkie nowsze).	pl	Jaki system plików jest używany przez Windows 10?
3	101	Najczęściej używanym systemem plików w systemie Linux jest ext4.	pl	Jaki system plików jest używany przez system Linux?
3	102	Network File System (NFS) to oparty na UDP lub TCP protokół zdalnego udostępniania systemu plików.	pl	Który z wymienionych pozycji jest sieciowym systemem plików?
3	103	Często używanym w systemach Linux formatem archiwum jest tar.	pl	Archiwizację plików w systemie Linux można wykonać za pomocą polecenia
3	104	Polecenie uname -s w systemie Linux skutkuje wypisaniem nazwą jądra systemu operacyjnego	pl	Za pomocą polecenia uname -s w systemie Linux mozna sprawdzić
3	105	Microsoft Open License Program (MOLP, OLP) to program licencyjny firmy Microsoft, pozwalający instytucjom komercyjnym i organizacjom na nabywanie grupowych licencji oprogramowania na korzystnych warunkach.	pl	Grupowa licencja oprogramowania Microsoft to licencja określana skrótem
3	106	Linuxowe polecenie chmod pozwala na modyfikację uprawnień do danego pliku.	pl	Jakim poleceniem można zmienić prawa dostępu do określonego pliku/katalogu? 
3	107	Optical character recognition (OCR) to oprogramowanie służące do rozpoznawania znaków i całych tekstów w rastrowym pliku graficznym.	pl	Zamiana obrazu na tekst to technika
3	108	Program dxdiag pozwala sprawdzić parametry kart graficznych, dźwiękowych oraz urządzeń wejścia/wyjścia.	pl	Jaką komendą można sprawdzić parametry karty graficznej w systemie Windows?
3	109	Norton Ghost to program komputerowy służący do tworzenia kopii bezpieczeństwa danych. Ma możliwość wykonywania obrazu partycji orarz przywrócenie całego dysku/partycji.	pl	Którym programem można wykonać kopię partycji dysków?
3	110	Najpopularniejszy boot manager systemu Linux to GNU GRUB.	pl	Jak się nazywa boot manager w systemie Linux?
3	111	Hyper-V to oprogramowanie firmy Microsoft służące do wirtualizacji fizycznych maszyn. Jest komponentem systemów Windows.	pl	Część systemu Windows 10, która umożliwia wirtualizację to
3	112	Windows Defender to komponent systemu Windows służący jako oprogramowanie antywirusowe.	pl	Część systemu Windows 10, która chroni użytkowników przed szkodliwym oprogramowaniem to
3	113	Polecenie net localgroup skutuje wyświetleniem lokalnych grup użytkowników.	pl	Co spowoduje polecenie net localgroup na systemie Windows?
3	114	RAID 10 polega na zrobieniu stripe mirrorów, czyli rozbicie danych na dwa dyski, a następnie wykonanie kopii każdego z dysków i zgrupowanie rarzem dysków zawierających te same dane. Wymaga to minimum 4 dysków.	pl	Do zbudowania macierzy dyskowej RAID 10, ile należy użyć dysków?
3	115	HDMI to opublikowany w 2002 roku interfejs służący do przesyłania cyfrowego, nieskompresowanego sygnału audio i wideo.	pl	Interfejs HDMI pozwala na przesyłanie 
3	116	Komparator to układ służący do porównywania dwóch liczb binarnych lub poziomów napięć.	pl	Za pomocą czego można porównać liczby binarne?
3	117	IEEE 1284 to standard dwukierunkowego, równoległego interfejsu komunikacyjnego,	pl	Który interfejs umożliwia przesyłanie równoległe?
3	118	Powszechnie stosowanym interfejsem dla kart rozszerzeń w komputerach osobistych jest PCI.	pl	Interfejsem wewnętrznym w komputerze jest
3	119	SATA jest standardem złącz wykorzystywanych głównie do podłączenia dysków wewnętrznych.	pl	Który z wymienionych standardów umożliwi podłączenie dysku SSD?
3	120	Współcześnie, taktowanie procesorów w komputerach osobistych podawane jest w GHz.	pl	Szybkość procesora najczęściej podawana jest w 
3	121	Monitory kineskopowe często określa się jako monitory CRT, ponieważ CRT oznacza kineskop.	pl	Jakim skrótem określa się monitory kineskopowe?
3	122	Scalable Link Interface (SLI) to technologia frimy NVIDIA do łączenia dwóch lub więcej kart graficznych w celu wytworzenia pojedynczego obrazu.	pl	Technologia łączenia kart graficznych opracowana przed Nvidię to
3	123	CrossFire to technologia frimy NVIDIA do łączenia dwóch lub więcej kart graficznych w celu wytworzenia pojedynczego obrazu.	pl	Technologia łączenia kart graficznych opracowana przed AMD to
3	124	Kompilator to oprogramowanie służące do tłumaczenia kodu źródłowego napisanego przez programistę na kod maszynowy, zrozumiały przez procesory.	pl	Zamiana kodu źródłowego na kod maszynowy jest wykonywana przez
3	125	System Windows używa jądra hybrydowego, które łączy zalety mikrojądra i jądra monolitycznego.	pl	Jakie jądro posiada Windows 10?
3	126	System Linux korzysta z jądra monolitycznego, co oznacza, że jest jednym wielkim procesem działającym w pojedynczej przestrzeni adresowej.	pl	Jakie jądro posiada system Linux?
3	127	QNX to komercyjny Unixopodobny system operacyjny czasu rzeczywistego, zaprojektowany pod systemy wbudowane.	pl	Który z wymienionych systemów jest systemem czasu rzeczywistego?
3	128	MS-DOS to wersja systemu DOS wytworzona przez firmę Microsoft. System ten działa w pełni w wierszu poleceń.	pl	Który z wymienionych systemów działał tylko w wierszu poleceń?
3	129	Eventvwr.msc to narzędzie systemu Windows, służące do monitorowania zdarzeń, które miały miejsce w systemie.	pl	Narzędzie służące do monitorowania zdarzeń w systemie Windows to
3	130	Advanced package tool (APT) to darmowy interfejs obsługujący instalację i usunięcie oprogramowania na dystrybucjach systemu Linux opartych na Debianie.	pl	Instalacja i dezinstalacja składników w systemie Linux odbywa się za pomocą komendy 
4	131	Iloczyn kartezjański zbiorów A i B to zbiór wszystkich par uporządkowanych (x,y), takich że x należy do A i y należy do B. Innymi słowy, jeśli zbiór A ma 15 elementów, a zbiór B ma 8 elementów, iloczyn kartezjański to 15x8 = 120.	pl	Tabela A zawiera 15 rekordów a tabela B zawiera 8 rekordów. Ile rekordów otrzymamy, gdy wykonamy iloczyn kartezjański tych dwóch zbiorów? 
4	132	Parametr NOT NULL oznacza, że pole nie może być puste.	pl	Załóżmy, że w tabeli A jest kolumna kol1 typu NOT NULL. Ile rekordów zostanie wykasowanych po wydaniu polecenia: DELETE FROM A where kol1 = kol1;
4	133	Aby utworzyć kolumnę przy tworzeniu tabeli, należy podać jej nazwę, typ oraz parametry, np. imie VARCHAR(5) NOT NULL.	pl	Który fragment polecenia CREATE TABLE jest na pewno poprawny?
4	134	Kolumna zawierająca klucz obcy w tabeli podrzędnej musi być zawsze tego samego typu co typ klucza głównego w tabeli nadrzędnej.	pl	Kolumna zawierająca klucz obcy w tabeli podrzędnej
4	135	% oznacza dowolną ilość znaków, podczas gdy _ oznacza pojedynczy znak.	pl	Polecenie: SELECT nazwisko FROM pracownicy WHERE nazwisko LIKE BINARY 'A%ow_'; odnajdzie między innymi pracownika o nazwisku:
4	136	Doprowadzenie modelu do kolejnej wyższej postaci normalnej oznacza rozdrobnienie danych na więcej tabel.	pl	Doprowadzanie modelu do kolejnej wyższej postaci normalnej powoduje, że:
4	137	Jednym z modułów XAMPP'a jest phpMyAdmin - oprogramowanie do zarządzania bazami opartymi na MySQL.	pl	XAMPP zawiera pakiet służący do zarządzania bazą danych pod nazwą...
4	138	Zapytanie ORDER BY wskazuje na sposób sortowania wyniku - wskazujemy kolumnę i stwierdzamy, czy wynik ma być sortowany rosnąco, czy malejąco.	pl	By uporządkować wynik zapytania według danej kolumny, należy podsłużyć się słowem
4	139	Zapytanie Count zwraca liczbę rekordów, spełniających pozostałe warunki zapytania.	pl	COUNT w języku SQL powoduje
4	140	Zapytanie LEFT JOIN zwraca wszystkie wiersze z lewej tabeli oraz pasujące wiersze z prawej tabeli. Wynikiem jejst NULL z prawej strony, jeżeli nie ma dopasowania.	pl	Do czego używa się instrukcję LEFT JOIN?
4	141	Zapytanie AVG zwraca średnią wartość ze wskazanej kolumny.	pl	Funkcja obliczająca średnią ze zwracanych wartości rekordów to
4	142	Zapytanie SUM zwraca sumę wartości ze wskazanej kolumny.	pl	Fukcja sumująca wartości rekordów to
4	143	Zapytanie GRANT jest używane do przydzielenia użytkownikowi uprawnień. GRANT ALL pozwala na przydzielenie wszystkich uprawnień wskazanemu użytkownikowi.	pl	Która fukcja powoduje przydzielenie wszystkich uprawnień
4	144	Wśród uprawnień, którymi możemy zarządzać są SELECT, INSERT,, UPDATE i DELETE.	pl	Funkcja GRANT SELECT, INSERT, UPDATE, DELETE ON base.tab TO 'User'@'localhost'; nada jakie uprawnienia?
4	145	Proces usuwania nadmiarowych tabel oraz niespójności w bazie danych nazywamy normalizacją.	pl	Usuwanie nadmiarowych danych oraz niespójności z bazy danych to
4	146	W relacyjnym modelu baz danych, krotki to wiersze tabeli z wyjątkiem wiersza nagłówkowego, w którym umieszcza się nazwy kolumn	pl	Czym jest krotka?
4	147	Polecenie CREATE USER pozwala na utworzenie nowego użytkownika.	pl	Co powoduje polecenie CREATE USER?
4	148	Atrybut UNIQUE oznacza, że we wskazanej kolumnie wartości nie mogą się powtarzać.	pl	Atrybut, który powoduje, że wartości nie mogą się powtarzać
4	149	Atrybut DEFAULT wskazuje domyślną wartość we wskazanej kolumnie, jeżeli nie zostanie podana żadna inna.	pl	Atrybut, który ustawia wartość domyślną, gdy nie poda się danych do podanej kolumny
4	150	Atrybut FOREIGH HKEY zapobiega działaniom, które mogłyby zniszczyć powiązania między tabelami.	pl	Co powoduje atrybut FOREIGN KEY wobec tabeli?
4	151	Atrybut PRIMARY KEY jednoznacznie identyfikuje każdy rekord w tabeli. Klucze podstawowe muszą zawierać wartości UNIQUE i nie mogą zawierać wartości NULL.	pl	Co oznacza atrybut PRIMARY KEY w tabeli?
4	152	Instrukcja ALTER TABLE służy do dodawania, usuwania lub modyfikowania kolumn w istniejącej tabeli. Instrukcja ALTER TABLE służy również do dodawania i usuwania różnych ograniczeń w istniejącej tabeli.	pl	Za co odpowiada instrukcja ALTER TABLE?
4	153	Instrukcja DROP TABLE służy do usuwania istniejącej tabeli w bazie danych.	pl	Za co odpowiada instrukcja DROP TABLE?
4	154	Instrukcja LIKE jest używana w klauzuli WHERE do wyszukiwania określonego wzorca w kolumnie.	pl	Za co odpowiada instrkucja LIKE w zapytaniu?
4	155	Polecenie LIMIT określa ile wierszy tabeli zostanie zwróconych w wyniku zaptania.	pl	Jaki będzie wynik zaptyania SELECT * FROM users LIMIT 3;?
4	156	Polecenie FULL OUTER JOIN zwraca wszystkie wiersze, jeśli istnieje dopasowanie w lewej lub prawej tabeli	pl	Do czego używa się instrukcję FULL OUTER JOIN?
4	157	Instrukcja CREATE PRORCEDURE służy do tworzenia procedury składowanej.	pl	Co powoduje instrukcja CREATE PROCEDURE?
4	158	EXEC nazwa_procedury służy do uruchomienia procedury.	pl	W jaki sposób można uruchomić daną procedurę?
4	159	SELECT DISTINCT zwraca tylko odrębne (różne) wartości w zestawie wyników.	pl	Czym różni się instrukcja SELECT DISCTINCT or SELECT?
4	160	SELECT INTO kopiuje dane z jednej tabeli i wstawia je do nowej tabeli	pl	Co umożliwia instrukcja SELECT INTO?
4	161	SET można użyć jest korzystamy z UPDATE, aby określić, które kolumny i wartości powinny zostać zaktualizowane w tabeli.	pl	Kiedy można użyć instrukcji SET?
4	162	TRUNCATE TABLE usuwa dane wewnątrz tabeli, ale nie samą tabelę.	pl	Czym cechuje się funkcja TRUNCATE TABLE?
4	163	UNION łączy zestaw wyników dwóch lub więcej instrukcji SELECT (tylko odrębne wartości)	pl	Co umożliwia polecenie UNION?
1	164	The wait() function suspends the thread, while notify() resumes its execution.	eng	What are the purposes of the wait() and notify() methods?
1	165	Bottom-up approach is the approach to problem-solving by implementing individual functionalities and combining their results. It is implemented in object-oriented programming.	eng	What approach is implemented in object-oriented programming?
1	166	boolean - 1 bit, byte - 1 byte, char and short - 2 bytes, float and int - 4 bytes, long and double - 8 bytes.	eng	Which primitive type has the largest size?
1	167	The isAlive() method returns True for threads in the Runnable and Waiting states, and False for threads in the Terminated and Blocked states.	eng	What value will the isAlive() method return for a thread in the New Thread state?
1	168	The final keyword means that the element is immutable - also in the case of inheritance.	eng	Which keyword is used to specify the immutability of a declared element?
1	169	By executing the setLayout method with the parameter null, we resign from the layout manager.	eng	How to relinquish the layout manager in AWT and Swing?
1	170	Terminal components are components that do not contain other components.	eng	What are terminal components?
1	171	Method overloading involves creating variations of the same method. Which variant will be called depends on the passed parameters.	eng	What does method overloading depend on?
1	172	Two threads can never have access to the same method within the same object.	eng	Can two threads access the same method within one object?
1	173	Polymorphism involves method overloading - creating multiple variations of the same method, differing in parameters.	eng	Which mechanism allows for the implementation of the same names for different methods?
1	174	Getters and setters are functions used to set and retrieve the value of a private variable.	eng	What are Getters and Setters?
1	175	In Java, a char has a size of 2 bytes, which is 16 bits.	eng	What is the size of the char type in 64-bit Java?
1	176	Heavyweight components are implemented using graphical GUI system libraries. Lightweight components are drawn using Java code.	eng	What determines the appearance of lightweight components?
1	177	With multiple inheritance and polymorphism, there is always access to non-final methods from superclass.	eng	In multiple inheritance and with the same names (polymorphism), is there always access to all?
1	178	In Java, like in C and C++, there are no multidimensional arrays, only arrays of arrays.	eng	What characterizes the declaration of an array in the form of array[][]?
1	179	Expanding an interface is possible but should not be applied - changes to published/used interfaces can cause later problems with implementation compatibility and invocations.	eng	Select the true statement about interface expansion.
1	180	When creating a thread in Java, you should create a class that inherits from Thread or implements the Runnable interface and include the run() function, specifying the operations to be performed.	eng	What method in Java allows for thread functionality implementation?
1	181	A thread can be started by calling the start() function on the thread class object.	eng	What method in Java allows for thread execution?
1	182	Events are divided into low-level - related to the physical aspects of the interface, such as mouse clicks or entering the cursor into a specific area, and semantic - sequences of low-level events, e.g., selecting a specific menu item.	eng	Choosing an item from a menu is an event of what type?
1	183	Inheritance is used to associate classes with common elements, e.g., a Square class that inherits from a Rectangle class, which inherits from a Figure class.	eng	What is the purpose of inheritance?
1	184	Static fields and methods are methods that are created for a class, not an object. In other words, they do not require the creation of a class instance.	eng	What are static fields and methods?
1	185	WORA is the guiding acronym of the Java language. It stands for write once run anywhere.	eng	What does the acronym WORA stand for?
1	186	The this keyword denotes self-reference - a reference to the current object.	eng	What does the keyword this mean?
1	187	Providing an incorrect URL address results in throwing a MalformedURLException exception.	eng	What exception is thrown for an invalid URL address?
1	188	The correct definition of a copy constructor is A(A a) {}. The parameter passed to the constructor of class A is another object of type A.	eng	What is the correct definition of a copy constructor for class A?
1	189	The default layout manager for the JFrame class is BorderLayout.	eng	What is the default layout manager for the JFrame class?
1	190	In a non-static method, you can directly refer to static fields - this cannot be done in reverse.	eng	Can non-static methods directly reference static fields of a class?
1	191	One of the main advantages of JavaFX over Swing is the planned development - it is a newer product, still supported and developed.	eng	Advantages of JavaFX compared to Swing.
1	192	The suspend() function moves a thread to the not running state.	eng	When does a thread enter the not running state?
1	193	To implement multithreading, you need to create a class that inherits from the Thread class or implements the Runnable interface.	eng	What is the purpose of the Thread class?
1	194	Packages in Java are used to group related classes, interfaces, and subpackages.	eng	What do packages provide in Java?
1	195	In object-oriented programming, data is the most important.	eng	What is most important in object-oriented programming?
1	196	Java Foundation Classes (JFC) is a group of advanced GUI components designed to simplify application development.	eng	What does the JFC abbreviation mean?
1	197	There are two keywords in Java that serve no function - goto and const.	eng	Which keyword in Java serves no function?
1	198	In Java, indexed arrays start from 0.	eng	From what value are arrays indexed in Java?
1	199	In Java, creating a new object is done using the new keyword.	eng	When is the new operator used?
1	200	The DatagramSocket class represents a socket used for sending and receiving datagram packets.	eng	What is the purpose of the DatagramSocket class?
1	201	To handle dates, it is best to use the java.time library.	eng	Which library should be used to handle dates?
1	202	NullPointerException - an exception thrown when the reference we are trying to use is null.	eng	Which exception is thrown when reading from an empty reference?
1	203	Most graphical elements in AWT inherit directly from the Component class.	eng	Which class is directly superclass for graphical elements in AWT?
1	204	To declare a variable, you should use the syntax <variable_type> <variable_name>.	eng	What is the correct declaration of a variable of type string?
1	205	To check if a String variable is empty, you use the isEmpty() function.	eng	Which method does not occur in the String class?
1	206	All fields in an enum are simultaneously public, static, and final.	eng	What is the difference between class and enum?
1	207	Access modifiers in Java are public, private, protected, and default (used only when no other is specified).	eng	Which access modifier does not exist in Java?
1	208	The acos() function in Java returns values from -1 to 1 of type double.	eng	What type will the function acos(x) return?
1	209	To print something to the console in Java, you use System.out.print or System.out.println.	eng	How many methods does System.out have to print text to the console?
1	210	To get the length of an array, you use the length field of that array.	eng	How can you check the length of an array of integers in Java?
1	211	The Array type is part of java.util.	eng	In which class is the Array type located?
1	212	To write a number in octal system, you need to use the appropriate literal format, meaning add 0 at the beginning.	eng	How to store a value in octal system?
1	213	Adaptive classes are classes with empty methods for interfaces. This allows us to use only those interface methods that we want.	eng	What are adapter classes?
2	214	Two-dimensional graphics, also known as 2D graphics.	eng	Two-dimensional graphics are denoted by the acronym
2	215	GIMP is a free, open-source raster graphics editor released under the GNU GPL license.	eng	Which of the following programs is licensed under GNU GPL?
2	216	One of the biggest drawbacks of the GIF format is the limitation to 256 colors.	eng	What is the biggest disadvantage of the GIF extension?
2	217	Portable Network Graphics (PNG) is a raster graphics format that supports lossless compression.	eng	Which extension offers lossless image compression?
2	218	The JFIF format uses JPG compression, resulting in the loss of some data.	eng	Which extension offers lossy image compression?
2	219	Lossy compression means that part of the original file's data is lost as a result.	eng	What are the effects of lossy compression?
2	220	The main advantage of vector graphics is that they store information about vectors rather than points - this allows scaling to any resolution without loss of quality.	eng	Advantages of vector graphics
2	221	Raster graphics are characterized by susceptibility to manipulation.	eng	Advantages of raster graphics
2	222	Currently, the most popular aspect ratio resolution is 1920x1080.	eng	What is the most popular screen resolution in 16:9 format?
2	223	Vector graphic images are most commonly saved in SVG format.	eng	What is the format of vector graphics?
2	224	RGB stands for Red, Green, and Blue.	eng	What colors are included in RGB?
2	225	CMYK stands for Cyan, Magenta, Yellow, and Black.	eng	What colors are not included in CMYK?
2	226	Vector graphics find applications in fonts, ensuring they remain readable regardless of resolution.	eng	Where is vector graphics used?
2	227	GIMP is a free, open-source raster graphics editor released under the GNU GPL license.	eng	GIMP is a program for graphic processing
2	228	The RGB color model is used to display images on monitors.	eng	Which color model is used to display colors on a computer monitor?
2	229	The CMYK color model is used in printers.	eng	Which color model is used in printers?
2	230	Screen resolution is expressed in dimensions given in pixels.	eng	How is screen resolution expressed?
2	231	PDF is a file format created by Adobe for presenting documents containing text formatting and images in a software, hardware, and operating system-independent manner.	eng	Which format is not a graphic file format?
2	232	3DS Max is a professional program for creating 3D graphics and animations.	eng	Which program allows editing of 3D models?
2	233	Paint is a built-in simple 2D raster graphics editing program included with the Windows operating system.	eng	Which program does not offer the creation of 3D animations?
2	234	Blender is a free, open-source 3D graphics editing program released under the GNU GPL license.	eng	Which of the following programs is licensed under GNU GPL?
2	235	Visual Studio is an integrated development environment released by Microsoft.	eng	Which program is not a game engine?
2	236	Unity is a cross-platform game engine. Usage is free until annual revenue exceeds $100,000. After exceeding this threshold, purchasing a license is required.	eng	Is Unity free?
2	237	Currently, the only language supported by the Unity engine is C#.	eng	Which language is used in Unity?
2	238	The primary language used in Unreal Engine is C++.	eng	Which language is used in Unreal Engine?
2	239	Godot is a free, open-source game engine.	eng	Which of the listed graphics engines is free?
2	240	The OBJ format contains information about the geometry of 3D objects.	eng	Which of the following extensions allows saving 3D graphics files?
2	241	FLAC is an audio format allowing for lossless compression.	eng	Which of the following extensions does not allow saving 3D graphics files?
2	242	Times New Roman is a serif font.	eng	Times New Roman is what type of font?
2	243	Sans-serif fonts are fonts without serifs. This means that the ends of characters are straight.	eng	What characterizes sans-serif fonts?
2	244	Sans-serif fonts include Arial, Verdana, Trebuchet MS, Helvetica, and Futura, among others.	eng	Which font is sans-serif?
2	245	Serif fonts include Times New Roman, MS Serif, Lucida Fax, and Courier New, among others.	eng	Which font is serif?
2	246	The SIL Open Font License is one of the main font licenses that allows for including the font in a sold product.	eng	Which license allows for unrestricted use of the font?
2	247	Shader creation in Unity involves using ShaderLab, HLSL, and GLSL.	eng	Which shader language does not support Unity?
2	248	In Unity, we distinguish between ambient light, directional light, spot light, and point light.	eng	What types of lights are unavailable in Unity?
2	249	Ambient Occlusion is a method of shading the surfaces of objects in 3D graphics, involving controlling the attenuation of ambient light.	eng	A global illumination method that increases the realism of models by controlling the light attenuation resulting from occlusion areas. What does this definition concern?
2	250	Prefab is a special type of component that allows for saving fully configured GameObject objects.	eng	A special type of component that allows fully configured GameObjects to be saved in the project for reuse. What component is being talked about?
2	251	A vertex in computer graphics is referred to as a vertex.	eng	In computer graphics, a vertex is
2	252	An edge in computer graphics is referred to as an edge.	eng	In computer graphics, an edge is
2	253	Adobe Illustrator is a vector graphics editor developed by Adobe.	eng	Adobe Illustrator is a program for graphic editing
3	254	The Windows command perfmon allows for launching the performance monitor.	eng	What does the perfmon command do in the Windows system?
3	255	In the Linux system, disks connected via SATA are labeled as sdx, where x represents the next disk.	eng	How is a SATA hard disk drive labeled in the Linux system?
3	256	The command cd ~ in the Linux system means changing to the user's home directory.	eng	What does the cd ~ command do in the Linux system?
3	257	The tty command in the Linux system displays the terminal name.	eng	What is the purpose of the tty command in Linux?
3	258	The command ipconfig /flushdns allows for clearing the DNS cache.	eng	Which command clears the DNS cache?
3	259	Keylogger is a type of malicious software that captures pressed keys to intercept logins, passwords, and other sensitive data.	eng	Malware that captures keystrokes by the user is called
3	260	The Linux command chown is used to change the owner of a file.	eng	What is the purpose of the chown command in Linux?
3	261	The built-in Windows program chkdsk is used to repair the logical structure of a disk.	eng	When is the chkdsk program used?
3	262	The structure of a hard disk is divided into (in ascending order) sectors, heads, and cylinders.	eng	What is the smallest structure of a hard disk?
3	263	NTFS (New Technology File System) is the file system of the Windows NT (Windows 2000, XP, and all newer) operating systems.	eng	Which file system is used by Windows 10?
3	264	The most commonly used file system in the Linux system is ext4.	eng	Which file system is used by the Linux system?
3	265	Network File System (NFS) is a protocol for remote file sharing based on UDP or TCP.	eng	Which of the following is a network file system?
3	266	The tar format is often used in Linux systems for archiving.	eng	File archiving in Linux can be done using the command
3	267	The uname -s command in the Linux system results in printing the name of the operating system kernel.	eng	What can you check using the uname -s command in Linux?
3	268	Microsoft Open License Program (MOLP, OLP) is a Microsoft licensing program that allows commercial institutions and organizations to acquire group software licenses on favorable terms.	eng	The group software license by Microsoft is abbreviated as
3	269	The Linux chmod command allows for modifying permissions for a specific file.	eng	Which command can change the access rights to a specific file/directory?
3	270	Optical character recognition (OCR) is software used to recognize characters and entire texts in raster graphic files.	eng	Converting an image to text is a technique called
3	271	The dxdiag program allows checking the parameters of graphics cards, sound cards, and input/output devices.	eng	How can you check the parameters of a graphics card in the Windows system?
3	272	Norton Ghost is a computer program used to create data backups. It has the ability to create a partition image or restore an entire disk/partition.	eng	Which program can be used to create a backup of disk partitions?
3	273	The most popular boot manager for Linux systems is GNU GRUB.	eng	What is the name of the boot manager in the Linux system?
3	274	Hyper-V is Microsoft software used for virtualizing physical machines. It is a component of Windows systems.	eng	The part of the Windows 10 system that enables virtualization is
3	275	Windows Defender is a component of the Windows system used as antivirus software.	eng	The part of the Windows 10 system that protects users from malicious software is
3	276	The net localgroup command displays local user groups.	eng	What does the net localgroup command do in the Windows system?
3	277	RAID 10 involves making stripe mirrors, which means dividing data into two disks, then making a copy of each disk and grouping together disks containing the same data. This requires a minimum of 4 disks.	eng	How many disks are needed to build a RAID 10 disk array?
3	278	HDMI is an interface published in 2002 used for transmitting digital, uncompressed audio and video signals.	eng	HDMI interface allows for
3	279	Comparator is a circuit used for comparing two binary numbers or voltage levels.	eng	What can be used to compare binary numbers?
3	280	IEEE 1284 is a standard for bidirectional, parallel communication interface.	eng	Which interface allows for parallel transmission?
3	281	PCI is a commonly used interface for expansion cards in personal computers.	eng	The internal interface in a computer is
3	282	SATA is a standard for connectors mainly used to connect internal drives.	eng	Which of the listed standards enables connection of SSD drives?
3	283	Nowadays, the clock speed of processors in personal computers is given in GHz.	eng	Processor speed is most commonly given in
3	284	Cathode Ray Tube monitors are often referred to as CRT monitors because CRT stands for cathode ray tube.	eng	What acronym is used to refer to cathode ray tube monitors?
3	285	Scalable Link Interface (SLI) is NVIDIA's technology for combining two or more graphics cards to produce a single image.	eng	The technology for connecting graphics cards developed before Nvidia is
3	286	CrossFire is NVIDIA's technology for combining two or more graphics cards to produce a single image.	eng	The technology for connecting graphics cards developed before AMD is
3	287	A compiler is software used to translate source code written by a programmer into machine code understood by processors.	eng	Converting source code to machine code is done by
3	288	The Windows system uses a hybrid kernel, which combines the advantages of microkernel and monolithic kernel.	eng	What kernel does Windows 10 have?
3	289	The Linux system uses a monolithic kernel, meaning it is a single large process running in a single address space.	eng	What kernel does the Linux system have?
3	290	QNX is a commercial Unix-like real-time operating system designed for embedded systems.	eng	Which of the listed systems is a real-time operating system?
3	291	MS-DOS is a version of the DOS system developed by Microsoft. This system operates fully in a command-line interface.	eng	Which of the listed systems only operates in command line interface?
3	292	Eventvwr.msc is a Windows system tool used to monitor events that have occurred in the system.	eng	The tool used for monitoring events in the Windows system is
3	293	Advanced Package Tool (APT) is a free interface for installing and removing software on Linux distributions based on Debian.	eng	Installation and uninstallation of components in the Linux system is done using the command
4	294	The Cartesian product of sets A and B is the set of all ordered pairs (x, y), such that x belongs to A and y belongs to B. In other words, if set A has 15 elements, and set B has 8 elements, the Cartesian product is 15x8 = 120.	eng	Table A contains 15 records and table B contains 8 records. How many records will we get when we perform the Cartesian product of these two sets?
4	295	The NOT NULL parameter means that the field cannot be empty.	eng	Let's assume that in table A there is a column col1 of type NOT NULL. How many records will be deleted after executing the command: DELETE FROM A where col1 = col1;
4	296	To create a column when creating a table, you need to provide its name, type, and parameters, for example, name VARCHAR(5) NOT NULL.	eng	Which fragment of the CREATE TABLE command is definitely correct?
4	297	The column containing a foreign key in the child table must always be of the same type as the primary key type in the parent table.	eng	Column containing a foreign key in the child table
4	298	% means any number of characters, while _ means a single character.	eng	Query: SELECT lastname FROM employees WHERE lastname LIKE BINARY 'A%ow_'; will find, among others, an employee with the last name:
4	299	Bringing the model to the next higher normal form means fragmenting data into more tables.	eng	Bringing the model to the next higher normal form causes:
4	300	One of XAMPP's modules is phpMyAdmin - software for managing MySQL-based databases.	eng	XAMPP contains a package for managing databases called...
4	301	The ORDER BY clause in a query indicates the way the result is sorted - we specify the column and determine whether the result should be sorted in ascending or descending order.	eng	To sort the query result according to a specific column, you should use the keyword:
4	302	The Count query returns the number of records that meet the remaining query conditions.	eng	COUNT in SQL causes:
4	303	The LEFT JOIN statement returns all rows from the left table and matching rows from the right table. The result is NULL from the right side if there is no match.	eng	What is the purpose of the LEFT JOIN statement?
4	304	The AVG function returns the average value from the specified column.	eng	The function that calculates the average of returned record values is
4	305	The SUM function returns the sum of values from the specified column.	eng	The function that sums up the record values is
4	306	Which function grants all privileges?	eng	Which function grants all privileges?
4	307	The GRANT function is used to grant permissions to a user. GRANT ALL allows granting all permissions to the specified user.	eng	The function GRANT SELECT, INSERT, UPDATE, DELETE ON base.tab TO 'User'@'localhost'; grants which permissions?
4	308	Removing excess data and inconsistencies from the database is called normalization.	eng	Removing excess data and inconsistencies from the database is
4	309	A tuple in a relational database model is a row in a table, except for the header row, which contains column names.	eng	What is a tuple?
4	310	The CREATE USER command allows creating a new user.	eng	What does the CREATE USER command do?
4	311	The UNIQUE attribute means that values in the specified column cannot be repeated.	eng	An attribute that prevents values from being repeated is
4	312	The DEFAULT attribute indicates the default value in the specified column if no other data is provided.	eng	An attribute that sets a default value when no data is provided for the specified column is
4	313	The FOREIGN KEY attribute prevents actions that could destroy relationships between tables.	eng	What does the FOREIGN KEY attribute do in relation to a table?
4	314	The PRIMARY KEY attribute uniquely identifies each record in the table. Primary keys must contain unique values and cannot contain NULL values.	eng	What does the PRIMARY KEY attribute mean in a table?
4	315	The ALTER TABLE statement is used to add, delete, or modify columns in an existing table. The ALTER TABLE statement is also used to add and delete various constraints in an existing table.	eng	What is the purpose of the ALTER TABLE statement?
4	316	The DROP TABLE statement is used to delete an existing table in the database.	eng	What does the DROP TABLE statement do?
4	317	The LIKE statement in a query is used to search for a specific pattern in a column.	eng	What does the LIKE statement do in a query?
4	318	What will be the result of the query SELECT * FROM users LIMIT 3;?	eng	What will be the result of the query SELECT * FROM users LIMIT 3;?
4	319	The FULL OUTER JOIN statement returns all rows if there is a match in either the left or right table.	eng	What is the purpose of the FULL OUTER JOIN statement?
4	320	The CREATE PROCEDURE statement is used to create a stored procedure.	eng	What does the CREATE PROCEDURE statement do?
4	321	How can you execute a particular procedure?	eng	How can you execute a particular procedure?
4	322	What is the difference between the SELECT DISTINCT and SELECT statements?	eng	What is the difference between the SELECT DISTINCT and SELECT statements?
4	323	What does the SELECT INTO statement allow?	eng	What does the SELECT INTO statement allow?
4	324	When can you use the SET statement?	eng	When can you use the SET statement?
4	325	The TRUNCATE TABLE function removes data inside a table but not the table itself.	eng	What characterizes the TRUNCATE TABLE function?
4	326	The UNION command combines the result sets of two or more SELECT statements (only distinct values).	eng	What does the UNION command allow for?
\.


--
-- TOC entry 3360 (class 0 OID 16398)
-- Dependencies: 218
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (category, id, answer_a, answer_b, answer_c, answer_correct, lang, question) FROM stdin;
1	1	do czekania na wyrenderowanie GUI	do obsługi strumieni IO	zależy od implementacji	do wymiany informacji pomiędzy wątkami	pl	Do czego służą metody wait() i notify()
1	2	top-down	step by step	od ogólu do szczególu	bottom-up	pl	Jakie podejście jest realizowane w przypadku programowania obiektowego?
1	3	int	float	int128	long	pl	Jaki typ pierwotny ma największy rozmiar?
1	4	1	0	TRUE	FALSE	pl	Jaką wartość zwróci metoda isAlive() dla wątku w stanie New Thread?
1	5	finalize	finish	finally	final	pl	Które słowo kluczowe służy do określenia niezmienności deklarowanego elementu?
1	6	korzystając z metody domyślnej setLayout()	używając NullLayout	używając EmptyLayout	używając null	pl	W jaki sposób zrezygnować z menadżera rozkładu w AWT i Swing?
1	7	do których jest dodany terminator	dziedziczące po Terminable	z określonym terminem widzialności	nie zawierające innych komponentów	pl	Co to są komponenty terminalne?
1	8	od wartości zwracanej	od typu obiektu	od wywołania	od parametrów	pl	Od czego zależy przeładowanie metod?
1	9	tak	tak, ale nie w tym samym czasie	nie, chyba, że jeden zostanie uśpiony wewnątrz metody (sleep)	nie, nigdy	pl	Czy dwa wątki mogą mieć dostęp do tej samej metody w ramach jednego obiektu?
1	10	Dziedziczenie	Enkapsulacja	Kompozycja	Polimorfizm	pl	Jaki mechanizm pozwala na implementację takich samych nazw dla różnych metod?
1	11	obowiązkowe metody	Przzeciążenie operatora =	Metody typu void	Interfejs do obsługi klasy	pl	Co to są Gettery i Settery?
1	12	8 bitów	32 bity	64 bity	16 bitów	pl	Jaki rozmiar ma typ znakowy char w Javie 64 bitowej?
1	13	Od systemu	Od JVM	Od użytkownika	Od programisty	pl	Od czego zależy wygląd komponentów lekkich?
1	14	metod z klas nadrzędnych	pól danych z klas nadrzędnych	pól prywatnych z klas nadrzędnych	metod nie finalnych z klas nadrzędnych	pl	Przy wielokrotnym dziedziczeniu i takich samych nazwach (polimorfizm), zawsze istnieje dostęp do wszystkich
1	15	że jest tablicą wielowymiarową	że tablice musi być przedstawiona w formie prostokąta	rozmiarem określonym w trakcie kompilacji	że jest to tablica tablic	pl	Czym charakteryzuje się deklaracja tablicy w postaci tab[][]?
1	16	rozrastanie interfejsu jest realizowane poprzez dziedziczenie	aby interfejs mógł się rozrastać musi dziedziczyć po growable	jest to powszechne w bibliotekach klas	rozrastanie interfejsu jest możliwe ale nie powinno być stosowane	pl	Zaznacz prawdziwe stwierdzenie na temat rozrastania interfejsów?
1	17	begin()	start()	notify()	run()	pl	Jaka metoda w Javie pozwala na implementację funkcjonalności wątku?
1	18	begin()	notify()	run()	start()	pl	Jaka metoda w Javie pozwala na uruchomienie watku?
1	19	typu select	obsługiwane przez system	niskiego poziomu	semantyczne	pl	Wybór pozycji z menu to zdarzenie typu
1	20	dla zachowania standardu OOP	optymalizacja działania kodu	ukrycie szczegółów dotyczących funkcjonowania klasy	powiązanie klas ze wspólnymi elementami	pl	W jakim celu wykorzystywane jest dziedziczenie?
1	21	pola lub metody, które nie moga zmieniac wartosci	pola lub metody, które są wykorzystywane dla obliczeń statystycznych	pola lub metody, które są kompilowane do kodu maszynowego	pola lub metody, które dotyczą klasy	pl	Co to są pola i metody statyczne? 
1	22	work of resource applied	with objective rapid applications	wide objective robust asynchronous	write once run anywhere	pl	Co oznacza akronim WORA?
1	23	odwołanie do pól z klas dziedziczących	odwołanie do pól z klasy object	odwołanie do obecnego elementu pętli	oznacza autoreferencje	pl	Co oznacza słowo kluczowy this?
1	24	BadURLException	BadAddressException	URLNotReachableException	MalformedURLException	pl	W przypadku błędnego adresu URL wyrzucony jest wyjątek:
1	25	&A(){}	A construct(A &var){}	new A().clone();	A(A a) {}	pl	Jaka jest poprawna definicja konstruktora kopiującego klasy A?
1	26	FlowLayout	null	GridLayout	BorderLayout	pl	Jaki jest domyślny menedżer rozkładu dla klasy JFrame?
1	27	nie	żależy od wywołania metody	Zależy od typu statyczności	tak	pl	Czy w metodzie niestatycznej można bezpośrednio odwoływać się do pól statycznych klasy?
1	28	Więcej komponentów	większa popularność	szybkość działania	Planowany rozwój	pl	Zalety JavaFX w stosunku do Swing
1	29	koniec metody run()	stop	pause	suspend	pl	Kiedy wątek przechodzi do stanu nie wykonywany?
1	30	Do implementacji serializacji	Do implementacji enkapsulacji	do implementacji obsługi wyjątków	do implementacji wielowątkowości	pl	Do czego służy klasa Thread
1	31	ułatwiają kompilacje	ułatwiają generowanie plików JAR	optymalizują działanie programów	ochronę składników	pl	Co zapewniają pakiety w Javie?
1	32	bezpieczeństwo	proces	elastyczność kodu	Dane	pl	Co jest najistotniejsze w przypadku programowania zorientowanego obiektowo?
1	33	Java Format Components	Java For Creators	Java Faster Compilation	Java Foundation Classes	pl	Co oznacza skrót JFC?
1	34	var	enum	native	const	pl	Jakie słowo kluczowe w javie nie pełni żadnej funkcji?
1	35	1	-1	Wskazanej przez programistę	0	pl	Od jakiej wartości są indeksowane tablice w javie?
1	36	Tylko gdy nie używamy konstruktora	Zawsze przy inicjalizacji nowego obiektu	Zawsze przy deklaracji nowej klasy.	Zawsze przy tworzeniu nowego obiektu	pl	Kiedy wykorzystywany jest operator new?
1	37	Do serweryzacji	wyłącznie do wysyłania danych	wyłącznie do odbierania danych	do wysyłania i odbierania danych	pl	Do czego służy klasa DatagramSocket?
1	38	java.util.date	java.date	javax.date.api	java.time	pl	Jakiej biblioteki należy używać do obsługi dat?
1	39	EmptyReferenceException	Syntax Error	NoObjectException	NullPointerException	pl	jaki wyjątek jest wyzwalany w przypadku odczytu z pustej refrencji?
1	40	Peer	Container	Object	Component	pl	Jaka klasa jest nadrzędna bezpośrednio dla elementów graficznych w AWT
1	41	string nazwa_zmiennej	char nazwa_zmiennej	char[] nazwa_zmiennej	String nazwa_zmiennej	pl	Jak wygląda poprawna deklaracja zmiennej o typie ciągu znaków?
1	42	concat()	join()	isEmpty()	isNull()	pl	Która metoda nie występuje w klasie String?
1	43	Tylko klasa posiada metody	Tylko enum posiada atrybuty	Enum może tworzyć obiekty	Enum posiada właściwości public, static i final. Nie można tego nadpisać	pl	Czym się różni class od enum?
1	44	protected	private	public	semiprotected	pl	Który atrybut dostępu nie istnieje w Javie?
1	45	int	float	long	double	pl	Jaki typ zwróci funkcja acos(x)?
1	46	0	1	3	2	pl	Ile istenieje metod System.out, by wypisać tekst w konsoli?
1	47	wywołując funkcję x.length()	wywołując funkcję sort(x)	wywołując funkcję count(x)	wykorzystując pole x.length	pl	Jak można sprawdzić długość tablicy integerów w Javie?
1	48	java.io	java.math	java.awt	java.util	pl	W jakiej klasie znajduje się typ Array?
1	49	metodą parseToOct	rzutując wartość dziesiętną	dzieląc wartość szesnastkową przez 2	odpowiedni format literału	pl	Jak zapisać wartość w systemie ósemkowym?
1	50	klasy adoptowane przez klasy nadrzędne	inaczej klasy polimorficzne	\N	klasy z pustymi metodami dla interfejsów	pl	Co to są klasy adaptacyjne?
2	51	D2	G2D	nie ma takiego skrótu	2D	pl	Grafikę dwuwymiarową określa się skrótem
2	52	Adobe Photoshop	Corel Draw	AutoCAD	Gimp	pl	Który z wymienionych programów jest na licencji GNU GPL?
2	53	Duży rozmiar	Brak możliwość utworzenia animacji	Działa tylko na niewielu platformach	Ograniczenie do 256 kolorów	pl	Jaka jest największa wada rozszerzenia GIF?
2	54	JPG	JPEG	HEIC	PNG	pl	Które rozszerzenie oferuje bezstratną kompresję obrazu?
2	55	TIFF	PNG	GIF	JFIF	pl	Które rozszerzenie oferuje stratną kompresję obrazu?
2	56	Plik osiąga większy rozmiar	Pliku nie można ponownie otworzyć	Plik po dekompresji ma dokładnie takie same właściwości	Plik po kompresji zawiera mniej danych niż oryginał	pl	Jakie są skutki kompresji stratnej?
2	57	Mała rozdzieloczość obrazu	Brak skalowania	Duży rozmiar pliku	Możliwość skalowania bez utraty jakości	pl	Zalety grafiki wektorowej
2	58	Możliwość skalowania pliku	Duży rozmiar pliku	Niewielkie odwzorowanie barw	Podatność na obróbkę 	pl	Zalety grafiki rastrowej
2	59	1280x1080	1600x900	800x600	1920x1080	pl	Jaka jest najpopularniejsza rozdzieloczość ekranu w formacie 16:9?
2	60	PNG	BMP	TIFF	SVG	pl	Jaki jest format grafiki wektorowej?
2	61	czerwony, niebieski, pomarańczowy	czarny, zielony, niebieski	różowy, granatowy, błękitny	czerwony, zielony, niebieski	pl	W skład kolorów RGB wchodzą:
2	62	cyjanowy	zółty	czarny	czerwony	pl	W skład kolorów CMYK nie wchodzi:
2	63	W zdjęciach	W plakatach	W pracach graficznych	W czcionkach	pl	Gdzie stosuje się grafikę wektorową?
2	64	wektorowej	obiektowej	pochodnej	rastrowej	pl	GIMP to program do obrówki grafiki
2	65	CMYK	RPG	LCD	RGB	pl	Który model barw stosuje się do wyświetlania kolorów na monitorze komputera?
2	66	RGB	RPG	LCD	CMYK	pl	Który model braw stosuje się w drukarakch?
2	67	Milimetry	Mikrometry	Centrymetry	Piksele	pl	W czym wyrażana jest rozdzielczość ekranu?
2	68	BMP	TIFF	RAW	PDF	pl	Który format nie jest formatem pliku graficznego?
2	69	Paint	Adobe Photoshop	CorelDraw	3DS Max	pl	Który program umożliwi edytowanie modelu 3D?
2	70	Adobe After Effects	Blender	3DS Max	Paint	pl	Który program nie oferuje utworzenie animacji 3D?
2	71	Adobe After Effects	3DS Max	Adobe Illustrator	Blender	pl	Który z wymienionych programów jest na licencji GNU GPL?
2	72	Godot	Unity	Unreal Engine	Visual Studio	pl	Który program nie jest silinikiem do tworzenia gier komputerowych?
2	73	Tak	Nie, należy wykupić licencję	Nie, należy wykupić comiesięczną subskrybcję	Tak, dopóki zyski z projektu nie przekraczają 100 tys $ na rok	pl	Czy Unity jest darmowe?
2	74	C	C++	F#	C#	pl	Jaki język jest używany w Unity?
2	75	C 	C#	F#	C++	pl	Jaki język jest używany w Unreal Engine?
2	76	Cinema 4D	Maya	CryEngine 3	Godot	pl	Który z wymienionych silników graficznych jest darmowy?
2	77	BMP	PNG	MKV	OBJ	pl	Który z wymienionych rozszerzeń umożliwia zapis plików grafiki 3D?
2	78	OBJ	FBX	STL	FLAC	pl	Które z wymmienionych rozszrzeń nie umożliwia zapisu pliku grafiki 3D?
2	79	Bezszeryfowym	Pisanką	Domyślnym	Szeryfowym	pl	Times New Roman jest jakim fontem?
2	80	Posiadają wykończenia	Mają różną wielkość znaków	Przypomnijają wygląd pisma jak z maszyny do pisania	Mają proste linie, bez odzodbników	pl	Co charaktetyzuje fonty bezszeryfowe?
2	81	Times New Roman	Georgia	Rockwell	Arial	pl	Która czcionka jest bezszeryfowa?
2	82	Arial	Veranda	Helvetica	Courier New	pl	Która czcionka jest szeryfowa?
2	83	Personal Use Fonts	Commertial Use Fonts	ShareWare	SIL	pl	Która licencja umożliwia dowolne wykorzystanie czionki?
2	84	HLSL	GLSL	ShaderLab	MLSL	pl	Jaki język shaderów nie obsługuje Unity?
2	85	Kierunkowe	Punktowe	Obszarowe	Żarówkowe	pl	Jakie typy światła są niedostępne w unity?
2	86	Ray Tracing	Ray Casting	Światło wolumetryczne	Ambient Occlusion	pl	Metodą oświetlenia globalnego, która zwiększa realistyczność modeli poprzez sterowanie tłumieniem światła otoczenia wynikającym z obszarów okluzji. Czego dotyczy ta definicja?
2	87	Tekstura	Model	Obiekt	Prefab	pl	Specjalny typ komponentu, który umożliwia zapisanie w pełni skonfigurowanych obiektów GameObjects w projekcie w celu ich ponownego użycia. O jakim komponenecie mowa?
2	88	Mesh	Edge	Polygon	Vertex	pl	Wierzchołek w grafice komputerowej to
2	89	Mesh	Vertex	Polygon	Edge	pl	Krawędź w grafice komputerowej to
2	90	Rastrowej	obiektowej	pochodnej	wektorowej	pl	Adobe Illustrator to program do obróbki grafiki:
3	91	Uruchomienie podglądu zdarzeń	Uruchomienie menedżera zadań	Uruchomienie meneżera urządzeń	Uruchomienie monitoru wydajności	pl	Za co odpowiada komenda perfmon w systemie Windows?
3	92	ssd	fda	sfd	sda	pl	Dysk twarty SATA w systemie Linux jest oznaczony jako 
3	93	Wyszukanie plików z ~ w nazwie	Utworzenie nowego nawiązania do pliku cd	przejście do katalogu  /mnt	przejście do katalogu domowego użytkownika	pl	Co powduje komenda cd ~ w systemie Linux?
3	94	Uruchomienie kolejnego okna terminala	Zmiana nazwy katalogu głównego	Podgląd struktury bieżącego katalogu	Wyświetlenie nazwy terminala	pl	Za co odpowiada polecenie tty w Linux?
3	95	ipconfig /renew	ipconfig /release	ifconfig /renew	ipconfig /flushdns	pl	Jaka komenda wyczyści bufor nazw domenowych?
3	96	trojan	rootkit	robak	keylogger	pl	Złośliwe oprogramowanie, które przechwytuje naciskane klawisze przez użytkownika to
3	97	zmiana uprawnień pliku	zmiana nazwy pliku	zmiana parametrów pliku	zmiana własciciela pliku	pl	Za co odpowiada komenda chown w systemie Linux?
3	98	By zdefragmentować dysk	By oczyścić dysk	By sprawdzić integralność danych np. w bazie danych	By naprawić strukturę logiczną dysku	pl	Kiedy używa się programu chkdsk?
3	99	Ścieżka	Głowica	Klaster	Sektor	pl	Najmniejsza struktura dysku twardego to
3	100	FAT32	ReiserFS	ext4	NTFS	pl	Jaki system plików jest używany przez Windows 10?
3	101	NTFS	FAT 32	NFS	ext4	pl	Jaki system plików jest używany przez system Linux?
3	102	UFS	XFS	WinFS	NFS	pl	Który z wymienionych pozycji jest sieciowym systemem plików?
3	103	zip	chmod	fdisk	tar	pl	Archiwizację plików w systemie Linux można wykonać za pomocą polecenia
3	104	ilość pamięci RAM	ilość wolnego miejsca na dysku	nazwę kodową systemu operacyjnego	nazwę jądra systemu operacyjnego	pl	Za pomocą polecenia uname -s w systemie Linux mozna sprawdzić
3	105	SIL	OEM	GPL	MOLP	pl	Grupowa licencja oprogramowania Microsoft to licencja określana skrótem
3	106	chown	attrib	atr	chmod	pl	Jakim poleceniem można zmienić prawa dostępu do określonego pliku/katalogu? 
3	107	DPI	RGB	nie istnieje	OCR	pl	Zamiana obrazu na tekst to technika
3	108	graphiccard	list-graphics	diagcard	dxdiag	pl	Jaką komendą można sprawdzić parametry karty graficznej w systemie Windows?
3	109	Diskpart	CrystalDiskInfo	HWMonitor	Norton Ghost	pl	Którym programem można wykonać kopię partycji dysków?
3	110	bootrec	btmgr	grboot	grub	pl	Jak się nazywa boot manager w systemie Linux?
3	111	Windows PowerShell	Windows Defener	Windows VirtualBox	Windows Hyper-V	pl	Część systemu Windows 10, która umożliwia wirtualizację to
3	112	Windows Securirty	Windows PowerShell	Windows Update	Windows Defender	pl	Część systemu Windows 10, która chroni użytkowników przed szkodliwym oprogramowaniem to
3	113	Połączy z lokalnym zasobem sieciowym	Utworzy grupę localgroup	Wyświetli błąd	Wyświetli zdefiniowane lokalne grupy	pl	Co spowoduje polecenie net localgroup na systemie Windows?
3	114	Conajmniej 1	Conajmniej 2	Conajmniej 3	Conajmniej 4	pl	Do zbudowania macierzy dyskowej RAID 10, ile należy użyć dysków?
3	115	Cyfrowego audio i analogowego wideo	Cyfrowergo wideo i analagowego audio	Tylko cyfrowe wideo	Cyfrowe wideo i audio	pl	Interfejs HDMI pozwala na przesyłanie 
3	116	bramki XOR	sumatoru	multipleksera	komparatora	pl	Za pomocą czego można porównać liczby binarne?
3	117	SATA	USB	RS232	IEEE 1284	pl	Który interfejs umożliwia przesyłanie równoległe?
3	118	HDMI	RJ-13	IrDa	PCI	pl	Interfejsem wewnętrznym w komputerze jest
3	119	ATA	ATAPI	AGP	SATA	pl	Który z wymienionych standardów umożliwi podłączenie dysku SSD?
3	120	kHz	s	GHz/s	GHz	pl	Szybkość procesora najczęściej podawana jest w 
3	121	LCD	VA	IPS	CRT	pl	Jakim skrótem określa się monitory kineskopowe?
3	122	CrossFire	ATI	RTX	SLI	pl	Technologia łączenia kart graficznych opracowana przed Nvidię to
3	123	ATI	RTX	SLI	CrossFire	pl	Technologia łączenia kart graficznych opracowana przed AMD to
3	124	emulator	debuger	interpreter	kompilator	pl	Zamiana kodu źródłowego na kod maszynowy jest wykonywana przez
3	125	monolityczne	mikrojądro	exokernel	hybrydowe	pl	Jakie jądro posiada Windows 10?
3	126	hybrydowe	mikrojądro	exokernel	monolityczne	pl	Jakie jądro posiada system Linux?
3	127	Ubuntu	Windows Server 2012	Inferno	QNX	pl	Który z wymienionych systemów jest systemem czasu rzeczywistego?
3	128	Windows ME	Windows XP	Windows 3.1	MS-DOS	pl	Który z wymienionych systemów działał tylko w wierszu poleceń?
3	129	drgs.msc	gpedit.msc	dxdiag	eventvwr.msc	pl	Narzędzie służące do monitorowania zdarzeń w systemie Windows to
3	130	tar	yml	install	apt	pl	Instalacja i dezinstalacja składników w systemie Linux odbywa się za pomocą komendy 
4	131	23	60	225	120	pl	Tabela A zawiera 15 rekordów a tabela B zawiera 8 rekordów. Ile rekordów otrzymamy, gdy wykonamy iloczyn kartezjański tych dwóch zbiorów? 
4	132	Wystąpi błąd	Zostanie usunięty tylko pierwszy rekord	Polecenie wykona się, ale nie usunie żadnego rekordu	Zostaną usunięte wszystkie rekordy	pl	Jaki będzie wynik polecenia DELETE FROM A where kol1 = kol1; ?
4	133	imie VAR(5) NOT NULL	numer BIN(5) UNIQUE	nazwisko TEKST(120)	imie VARCHAR(5) NOT NULL	pl	Który fragment polecenia CREATE TABLE jest na pewno poprawny?
4	134	UNIQUE	NOT NULL	UNIQUE KEY	PRIMARY KEY	pl	Jaki atrybut jednoznacznie identyfikuje każdy rekord w tabeli?
4	135	FOREIGN KEY	CHECK	DEFAULT	REQUIED	pl	Które ogranicznie stosowane w poleceniu CREATE TABLE jest błędne? 
4	136	Arkadiom	Abramow	Andrzejkowa	Abramowa	pl	Polecenie: SELECT nazwisko FROM pracownicy WHERE nazwisko LIKE BINARY 'A%ow_'; odnajdzie między innymi pracownika o nazwisku:
4	137	ALTER TABLE Customers ADD varchar(255) EMAIL;	ALTER  Customers ADD Email varchar(255);	ALTER TABLE Customers CREATE Email varchar(255);	ALTER TABLE Customers ADD Email varchar(255);	pl	Który polecenie jest poprawne?
4	138	w modelu pojawia się mniej tabel	baza danych działa szybciej	rośnie ilość powtórzonych rekordów	w modelu pojawia się coraz więcej tabel	pl	Doprowadzanie modelu do kolejnej wyższej postaci normalnej powoduje, że:
4	139	Microsoft SQL Server	Toad	DBBeaver	phpMyAdmin	pl	XAMPP zawiera pakiet służący do zarządzania bazą danych pod nazwą...
4	140	SELECT nazwisko FROM Pracownicy WHERE nazwisko = %i;	SELECT nazwisko FROM Pracownicy WHERE nazwisko LIKE ?i;	SELECT nazwisko FROM Pracownicy WHERE nazwisko LIKE ^i;	SELECT nazwisko FROM Pracownicy WHERE nazwisko LIKE %i;	pl	Zapytanie, dzięki któremu z tabeli Pracownicy wyświetlą się nazwiska, w których ostatnią literą jest i
4	141	SQL	PostgreSQL	MySQL	NoSQL	pl	Która z wymienionych baz danych nie jest relacyjna?
4	142	pgAdmin	DBBeaver	MariaDB	MongoDB	pl	Który program umożliwi zarządzanie nierelacyjną bazą danych?
4	143	ORDER	SORT	ORDERBY	ORDER BY	pl	By uporządkować wynik zapytania według danej kolumny, należy podsłużyć się atrybutem
4	144	AGREGATE()	COUNTING()	LIST()	COUNT()	pl	Funkcja argregująca zwaracną liczbę rekordów to
4	145	AVERAGE()	MEAN()	COUNT()	AVG()	pl	Funkcja obliczająca średnią ze zwracanych wartości rekordów to
4	146	AVG()	COUNT()	AGREGATE()	SUM()	pl	Fukcja sumująca wartości rekordów to
4	147	GRANT ROOT 	ROOT PRIVILIGES	GRANT *	GRANT ALL	pl	Która fukcja powoduje przydzielenie wszystkich uprawnień
4	148	DELETE	DOWNGRADE	UNGRANT	REVOKE	pl	Funkcją przeciwną do GRANT jest?
4	149	kolumna	tabela	baza danych	wiersz	pl	Czym jest krotka?
4	150	NOT NULL	DEFAULT	CHANGE	UNIQUE	pl	Atrybut, który powoduje, że wartości nie mogą się powtarzać
4	151	Do innej kolumny znajdującej się w tej samej tabeli	Do innego wiersza znajdującego się w tej samej tabeli	Do klucza znajdującego się w bazie danych	Do klucza znajdującego się w innej tabeli	pl	Do czego odwołuje się pole FOREIGN KEY?
4	152	Służy do sprawdzenia wartości, jeśli zgadza się z waunkiem zwraca wartość 1, jeśli fałsz to 0	Służy do sprawdzenia zgodności danych w tabeli	Służy do ograniczenia ilości tworzenia rekordów w tabeli	Służy do ograniczenia zakresu wartości, które można umieścić w kolumnie	pl	W jakim celu używa się atrybutu CHECK?
4	153	Nie istnieje takie pojęcie jak indeks w odniesieniu do baz danych	Służą do generowania któtkiego podsumowania danych znajdujących się w tabeli	Ułatwiają użytkownikom korzystanie z tabeli	Służą do szybszego pobierania danych z bazy danych	pl	W jakim celu stosuje się indeksy?
4	154	DROP INDEX nazwa_indeksu;	DROP INDEX nazwa_indeksu ON nazwa_tabeli;	DROP INDEX nazwa_tabel.nazwa_indeksu;	ALTER TABLE nazwa_tabel DROP INDEX nazwa_indeksu;	pl	Jak usunąć indeks w tabeli utworzonej w MySQL?
4	155	DATETIME	TIMESTAMP	DATETODAY	DATE	pl	Który typ danych zwróci datę w formacie YYYY-MM-DD?
4	156	MODIFY TABLE	CHANGE TABLE	Nie można modyfikować utworzonej tabeli	ALTER TABLE	pl	Jakim poleceniem można zmodyfikować strukturę tabel?
4	157	Wygląd tabeli	Nowa tabela utworzona zna podstawie starej tabeli, która została przez nią zastąpiona	Podgląd poszczególnych rekordów w tabeli	Wirtualna tabela stworzona na podstawie zapytania	pl	Czym jest widok tabeli?
4	158	SELECT COPY	COPY	ALTER TABLE nazwa_tabeli COPY	SELECT INTO	pl	W jaki sposób można skopiować dane z jednej tabeli do drugiej?
4	159	SELECT * 	SELECT UNIQUE	UNIQUE	SELECT DISTINCT	pl	Jaką instrukcją należy się posłużyć, żeby zapytanie zwróciło rekordy bez powtórzeń?
4	160	SELECT * FROM Customers NOT WHERE Country = 'Poland';	SELECT ALTERNATIVE * FROM Customers WHERE Country = 'Poland';	SELECT NOT * FROM Customers WHERE Country = 'Poland';	SELECT * FROM Customers WHERE NOT Country = 'Poland';	pl	Które polecenie jest poprawne?
4	161	SELECT * FROM table WHERE column = NULL;	SELECT * FROM table WHERE column = NULL;	SELECT * FROM table WHERE column = ;	SELECT * FROM table WHERE column IS NULL;	pl	Jak sprawdzić w zapytaniu czy dana wartość wynosi NULL?
4	162	ALTER TABLE Customers SET ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers SET ContactName = 'Andrzej H' AND City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers ON ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers SET ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	pl	Które zapytanie jest poprawne?
4	163	DELETE table_name;	REMOVE table_name;	ALTER TABLE table_name DELETE ALL;	DELETE FROM table_name;	pl	W jaki sposób można usunąć wszystkie rekordy bez usunięcia tabeli?
4	164	DELETE table_name;	REMOVE table_name;	DELETE FROM table_name;	DROP TABLE table_name;	pl	W jaki sposób mozna usunąć całą tabelę?
4	165	MIN()	SUM()	COUNT()	AVERAGE()	pl	Która funkcja agregująca nie występuje w SQL?
4	166	% reprezentuje 1 lub więcej znaków	% reprezentuje 0 lub 1 znaków	% reprezentuje pojedynczy znak	% reprezentuje 0, 1 lub więcej znaków	pl	Co reprezentuje % w kontekście operatora LIKE?
4	167	_ reprezentuje zero, jeden lub więcej znaków	_ reprezentuje zero lub jeden znak	_ reprezentuje jeden lub więcej znaków	_ reprezentuje jeden znak	pl	Co reprezentuje _ w kontekście operatora LIKE?
4	168	Żadne z wymienionych zapytań nie jest poprawne	SELECT * FROM Customers WHERE Country = 'Poland', 'Ukraine', 'Finland';	SELECT * FROM Customers WHERE Country LIKE ('Poland', 'Ukraine', 'Finland');	SELECT * FROM Customers WHERE Country IN ('Poland', 'Ukraine', 'Finland');	pl	Które zapytanie jest poprawne?
4	169	tylko tekstu	tylko liczb	liczb i tekstu	liczb, tekstu, daty	pl	Operator BETWEEN można stosować do:
4	170	IN	AND	NOT	ON	pl	Z jakim z wymienionych operatorów nie można łączyć operator BETWEEN?
1	171	for waiting for GUI rendering	for handling IO streams	Depends on the implementation	for exchanging information between threads	eng	What are the purposes of the wait() and notify() methods?
1	172	top-down	step by step	From general to specific	bottom-up	eng	What approach is implemented in object-oriented programming?
1	173	int	float	int128	long	eng	Which primitive type has the largest size?
1	174	1	0	TRUE	FALSE	eng	What value will the isAlive() method return for a thread in the New Thread state?
1	175	finalize	finish	finally	final	eng	Which keyword is used to specify the immutability of a declared element?
1	176	using the default setLayout() method	using NullLayout	Using EmptyLayout	using null	eng	How to relinquish the layout manager in AWT and Swing?
1	177	to which a terminator is added	inheriting from Terminable	With a specified visibility term	not containing other components	eng	What are terminal components?
1	178	from the return value	from the object type	From invocation	from parameters	eng	What does method overloading depend on?
1	179	yes	yes, but not at the same time	No, unless one gets paused inside the method (sleep)	no, never	eng	Can two threads access the same method within one object?
1	180	Inheritance	Encapsulation	Composition	Polymorphism	eng	Which mechanism allows for the implementation of the same names for different methods?
1	181	mandatory methods	Overloading operator =	Void-type methods	Interface for class handling	eng	What are Getters and Setters?
1	182	8 bits	32 bits	64 bits	16 bits	eng	What is the size of the char type in 64-bit Java?
1	183	From the system	From the JVM	From the user	From the programmer	eng	What determines the appearance of lightweight components?
1	184	methods from superclass	data fields from superclass	Private fields from superclass	non-final methods from superclass	eng	In multiple inheritance and with the same names (polymorphism), is there always access to all?
1	185	that it is a multidimensional array	that arrays must be represented in a rectangular form	Sized at compile time	that it is an array of arrays	eng	What characterizes the declaration of an array in the form of array[][]?
1	186	interface expansion is achieved through inheritance	for the interface to expand, it must inherit from growable	It is common in class libraries	interface expansion is possible but should not be used	eng	Select the true statement about interface expansion.
1	187	begin()	start()	notify()	run()	eng	What method in Java allows for thread functionality implementation?
1	188	begin()	notify()	run()	start()	eng	What method in Java allows for thread execution?
1	189	select type	handled by the system	Low-level	semantic	eng	Choosing an item from a menu is an event of what type?
1	190	for maintaining OOP standards	code performance optimization	Hiding class operation details	associating classes with common elements	eng	What is the purpose of inheritance?
1	191	fields or methods that cannot change values	fields or methods that are used for statistical calculations	Fields or methods that compile to machine code	fields or methods that concern the class	eng	What are static fields and methods?
1	192	work of resource applied	with objective rapid applications	Wide objective robust asynchronous	write once run anywhere	eng	What does the acronym WORA stand for?
1	193	reference to fields from inheriting classes	reference to fields from the object class	Reference to the current loop element	means self-reference	eng	What does the keyword this mean?
1	194	BadURLException	BadAddressException	URLNotReachableException	MalformedURLException	eng	What exception is thrown for an invalid URL address?
1	195	&A(){}	A construct(A &var){}	new A().clone();	A(A a) {}	eng	What is the correct definition of a copy constructor for class A?
1	196	FlowLayout	null	GridLayout	BorderLayout	eng	What is the default layout manager for the JFrame class?
1	197	no	depends on the method call	Depends on the level of staticness	yes	eng	Can non-static methods directly reference static fields of a class?
1	198	More components	greater popularity	Program speed	Planned development	eng	Advantages of JavaFX compared to Swing.
1	199	end of the run() method	stop	Pause	suspend	eng	When does a thread enter the not running state?
1	200	For serialization implementation	For implementing encapsulation	For exception handling implementation	for implementing multithreading	eng	What is the purpose of the Thread class?
1	201	facilitate compilation	facilitate JAR file generation	Optimize program performance	component protection	eng	What do packages provide in Java?
1	202	security	process	Code flexibility	Data	eng	What is most important in object-oriented programming?
1	203	Java Format Components	Java For Creators	Java Faster Compilation	Java Foundation Classes	eng	What does the JFC abbreviation mean?
1	204	var	enum	native	const	eng	Which keyword in Java serves no function?
1	205	1	-1	Specified by the programmer	0	eng	From what value are arrays indexed in Java?
1	206	Only when not using a constructor	Always when initializing a new object	Always when declaring a new class.	Always when creating a new object	eng	When is the new operator used?
1	207	For serialization	exclusively for sending data	Exclusively for data receiving	for sending and receiving data	eng	What is the purpose of the DatagramSocket class?
1	208	java.util.date	java.date	javax.date.api	java.time	eng	Which library should be used to handle dates?
1	209	EmptyReferenceException	Syntax Error	NoObjectException	NullPointerException	eng	Which exception is thrown when reading from an empty reference?
1	210	Peer	Container	Object	Component	eng	Which class is directly superclass for graphical elements in AWT?
1	211	string variable_name	char variable_name	char[] variable_name	String variable_name	eng	What is the correct declaration of a variable of type string?
1	212	concat()	join()	isEmpty()	isNull()	eng	Which method does not occur in the String class?
1	213	Only a class has methods	Only enum has attributes	Enum can create objects	Enum has properties public, static, and final. It cannot be overridden.	eng	What is the difference between class and enum?
1	214	protected	private	public	semiprotected	eng	Which access modifier does not exist in Java?
1	215	int	float	long	double	eng	What type will the function acos(x) return?
1	216	0	1	3	2	eng	How many methods does System.out have to print text to the console?
1	217	by calling the function x.length()	by calling the sort(x) function	by calling the count(x) function	by using the x.length field	eng	How can you check the length of an array of integers in Java?
1	218	java.io	java.math	java.awt	java.util	eng	In which class is the Array type located?
1	219	by the parseToOct method	by casting a decimal value	Dividing hexadecimal value by 2	appropriate literal format	eng	How to store a value in octal system?
1	220	classes adopted by superclass	otherwise polymorphic classes	Classes altering their behavior	classes with empty methods for interfaces	eng	What are adapter classes?
2	221	D2	G2D	There is no such abbreviation	2D	eng	Two-dimensional graphics are denoted by the acronym
2	222	Adobe Photoshop	Corel Draw	AutoCAD	Gimp	eng	Which of the following programs is licensed under GNU GPL?
2	223	Large size	Lack of animation creation capabilities	Works only on a few platforms	Limitation to 256 colors	eng	What is the biggest disadvantage of the GIF extension?
2	224	JPG	JPEG	HEIC	PNG	eng	Which extension offers lossless image compression?
2	225	TIFF	PNG	GIF	JFIF	eng	Which extension offers lossy image compression?
2	226	The file size increases	The file cannot be reopened	The file after decompression has exactly the same properties	The file after compression contains less data than the original	eng	What are the effects of lossy compression?
2	227	Low image resolution	Lack of scaling	Large file size	Ability to scale without loss of quality	eng	Advantages of vector graphics
2	228	Ability to scale the file	Large file size	Limited color reproduction	Susceptibility to editing	eng	Advantages of raster graphics
2	229	1280x1080	1600x900	800x600	1920x1080	eng	What is the most popular screen resolution in 16:9 format?
2	230	PNG	BMP	TIFF	SVG	eng	What is the format of vector graphics?
2	231	Red, blue, orange	Black, green, blue	Pink, navy blue, sky blue	Red, green, blue	eng	What colors are included in RGB?
2	232	Cyan	Yellow	Black	Red	eng	What colors are not included in CMYK?
2	233	In photographs	In posters	In graphic works	In fonts	eng	Where is vector graphics used?
2	234	Vector	Object-oriented	Derivative	Raster	eng	GIMP is a program for graphic processing
2	235	CMYK	RPG	LCD	RGB	eng	Which color model is used to display colors on a computer monitor?
2	236	RGB	RPG	LCD	CMYK	eng	Which color model is used in printers?
2	237	Millimeters	Micrometers	Centimeters	Pixels	eng	How is screen resolution expressed?
2	238	BMP	TIFF	RAW	PDF	eng	Which format is not a graphic file format?
2	239	Paint	Adobe Photoshop	CorelDraw	3DS Max	eng	Which program allows editing of 3D models?
2	240	Adobe After Effects	Blender	3DS Max	Paint	eng	Which program does not offer the creation of 3D animations?
2	241	Adobe After Effects	3DS Max	Adobe Illustrator	Blender	eng	Which of the following programs is licensed under GNU GPL?
2	242	Godot	Unity	Unreal Engine	Visual Studio	eng	Which program is not a game engine?
2	243	Yes	No, a license must be purchased	No, you need to purchase a monthly subscription	Yes, as long as project revenues do not exceed $100,000 per year	eng	Is Unity free?
2	244	C	C++	F#	C#	eng	Which language is used in Unity?
2	245	C	C#	F#	C++	eng	Which language is used in Unreal Engine?
2	246	Cinema 4D	Maya	CryEngine 3	Godot	eng	Which of the listed graphics engines is free?
2	247	BMP	PNG	MKV	OBJ	eng	Which of the following extensions allows saving 3D graphics files?
2	248	OBJ	FBX	STL	FLAC	eng	Which of the following extensions does not allow saving 3D graphics files?
2	249	Sans-serif	Handwriting	Default	Serif	eng	Times New Roman is what type of font?
2	250	They have finishes	They have different character sizes	They resemble the appearance of typewriter fonts	They have simple lines, without adornments	eng	What characterizes sans-serif fonts?
2	251	Times New Roman	Georgia	Rockwell	Arial	eng	Which font is sans-serif?
2	252	Arial	Veranda	Helvetica	Courier New	eng	Which font is serif?
2	253	Personal Use Fonts	Commercial Use Fonts	ShareWare	SIL	eng	Which license allows for unrestricted use of the font?
2	254	HLSL	GLSL	ShaderLab	MLSL	eng	Which shader language does not support Unity?
2	255	Directional	Pointwise	Area-based	Bulb	eng	What types of lights are unavailable in Unity?
2	256	Ray Tracing	Ray Casting	Volumetric light	Ambient Occlusion	eng	A global illumination method that increases the realism of models by controlling the light attenuation resulting from occlusion areas. What does this definition concern?
2	257	Texture	Model	Object	Prefab	eng	A special type of component that allows fully configured GameObjects to be saved in the project for reuse. What component is being talked about?
2	258	Mesh	Edge	Polygon	Vertex	eng	In computer graphics, a vertex is
2	259	Mesh	Vertex	Polygon	Edge	eng	In computer graphics, an edge is
2	260	Raster	Object-oriented	Derivative	Vector	eng	Adobe Illustrator is a program for graphic editing
3	261	Launching event viewer	Launching Task Manager	Launching Device Manager	Launching Performance Monitor	eng	What does the perfmon command do in the Windows system?
3	262	SSD	fda	sfd	sda	eng	How is a SATA hard disk drive labeled in the Linux system?
3	263	Finding files with ~ in the name	Creating a new link to a file cd	Moving to the directory /mnt	Going to the user's home directory	eng	What does the cd ~ command do in the Linux system?
3	264	Launching another terminal window	Changing the name of the main directory	Viewing the structure of the current directory	Displaying the terminal name	eng	What is the purpose of the tty command in Linux?
3	265	ipconfig /renew	ipconfig /release	ifconfig /renew	ipconfig /flushdns	eng	Which command clears the DNS cache?
3	266	trojan	rootkit	worm	keylogger	eng	Malware that captures keystrokes by the user is called
3	267	Changing file permissions	Changing the name of the file	Changing file parameters	Changing file owner	eng	What is the purpose of the chown command in Linux?
3	268	To defragment the disk	To clean the disk	To check data integrity e.g. in a database	To fix the logical structure of the disk	eng	When is the chkdsk program used?
3	269	Path	Head	Cluster	Sector	eng	What is the smallest structure of a hard disk?
3	270	FAT32	ReiserFS	ext4	NTFS	eng	Which file system is used by Windows 10?
3	271	NTFS	FAT32	NFS	ext4	eng	Which file system is used by the Linux system?
3	272	UFS	XFS	WinFS	NFS	eng	Which of the following is a network file system?
3	273	zip	chmod	fdisk	tar	eng	File archiving in Linux can be done using the command
3	274	Amount of RAM	Amount of free space on the disk	Operating system code name	Operating system kernel name	eng	What can you check using the uname -s command in Linux?
3	275	SIL	OEM	GPL	MOLP	eng	The group software license by Microsoft is abbreviated as
3	276	chown	attrib	atr	chmod	eng	Which command can change the access rights to a specific file/directory?
3	277	DPI	RGB	does not exist	OCR	eng	Converting an image to text is a technique called
3	278	graphiccard	list-graphics	diagcard	dxdiag	eng	How can you check the parameters of a graphics card in the Windows system?
3	279	Diskpart	CrystalDiskInfo	HWMonitor	Norton Ghost	eng	Which program can be used to create a backup of disk partitions?
3	280	bootrec	btmgr	grboot	grub	eng	What is the name of the boot manager in the Linux system?
3	281	Windows PowerShell	Windows Defender	Windows VirtualBox	Windows Hyper-V	eng	The part of the Windows 10 system that enables virtualization is
3	282	Windows Security	Windows PowerShell	Windows Update	Windows Defender	eng	The part of the Windows 10 system that protects users from malicious software is
3	283	Connects to a local network resource	Creating a localgroup group	Displays an error	Displaying defined local groups	eng	What does the net localgroup command do in the Windows system?
3	284	At least 1	At least 2	At least 3	At least 4	eng	How many disks are needed to build a RAID 10 disk array?
3	285	Digital audio and analog video	Digital video and analog audio	Only digital video	Digital video and audio	eng	HDMI interface allows for
3	286	XOR gates	Adder	multiplexer	comparator	eng	What can be used to compare binary numbers?
3	287	SATA	USB	RS232	IEEE 1284	eng	Which interface allows for parallel transmission?
3	288	HDMI	RJ-13	IrDa	PCI	eng	The internal interface in a computer is
3	289	ATA	ATAPI	AGP	SATA	eng	Which of the listed standards enables connection of SSD drives?
3	290	kHz	s	GHz/s	GHz	eng	Processor speed is most commonly given in
3	291	LCD	VA	IPS	CRT	eng	What acronym is used to refer to cathode ray tube monitors?
3	292	CrossFire	ATI	RTX	SLI	eng	The technology for connecting graphics cards developed before Nvidia is
3	293	ATI	RTX	SLI	CrossFire	eng	The technology for connecting graphics cards developed before AMD is
3	294	emulator	debugger	interpreter	compiler	eng	Converting source code to machine code is done by
3	295	monolithic	microkernel	exokernel	hybrid	eng	What kernel does Windows 10 have?
3	296	hybrid	microkernel	exokernel	monolithic	eng	What kernel does the Linux system have?
3	297	Ubuntu	Windows Server 2012	Inferno	QNX	eng	Which of the listed systems is a real-time operating system?
3	298	Windows ME	Windows XP	Windows 3.1	MS-DOS	eng	Which of the listed systems only operates in command line interface?
3	299	drgs.msc	gpedit.msc	dxdiag	eventvwr.msc	eng	The tool used for monitoring events in the Windows system is
3	300	tar	yml	install	apt	eng	Installation and uninstallation of components in the Linux system is done using the command
4	301	23	60	225	120	eng	Table A contains 15 records and table B contains 8 records. How many records will we get when we perform the Cartesian product of these two sets?
4	302	An error occurs	Only the first record will be deleted	The command will execute, but it will not delete any records	All records will be deleted	eng	What will be the result of the command DELETE FROM A where kol1 = kol1;?
4	303	name VAR(5) NOT NULL	BIN(5) UNIQUE	Surname TEXT(120)	Name VARCHAR(5) NOT NULL	eng	Which part of the CREATE TABLE command is definitely correct?
4	304	UNIQUE	NOT NULL	UNIQUE KEY	PRIMARY KEY	eng	Which attribute uniquely identifies each record in a table?
4	305	FOREIGN KEY	CHECK	DEFAULT	REQUIRED	eng	Which constraint used in the CREATE TABLE command is incorrect?
4	306	Arkadiom	Abramow	Andrzejowa	Abramova	eng	The command: SELECT surname FROM employees WHERE surname LIKE BINARY 'A%ow_'; will find, among others, an employee with the surname:
4	307	ALTER TABLE Customers ADD varchar(255) EMAIL;	ALTER Customers ADD Email varchar(255);	ALTER TABLE Customers CREATE Email varchar(255);	ALTER TABLE Customers ADD Email varchar(255);	eng	Which command is correct?
4	308	There are fewer tables in the model	The database works faster	The number of duplicate records increases	The model is getting more and more tables	eng	Bringing a model to the next higher normal form causes:
4	309	Microsoft SQL Server	Toad	DBBeaver	phpMyAdmin	eng	XAMPP includes a package for managing databases called...
4	310	SELECT surname FROM Employees WHERE surname = %i;	SELECT surname FROM Employees WHERE surname LIKE ?i;	SELECT surname FROM Employees WHERE surname LIKE ^i;	SELECT surname FROM Employees WHERE surname LIKE %i;	eng	A query that displays surnames from the Employees table where the last letter is i is:
4	311	SQL	PostgreSQL	MySQL	NoSQL	eng	Which of the listed databases is not relational?
4	312	pgAdmin	DBBeaver	MariaDB	MongoDB	eng	Which program enables managing a non-relational database?
4	313	ORDER	SORT	ORDER BY	ORDER BY	eng	To sort the query result by a specific column, you need to use the attribute:
4	314	AGGREGATE()	COUNTING()	LIST()	COUNT()	eng	The aggregate function returning the number of records is
4	315	AVERAGE()	MEAN()	COUNT()	AVG()	eng	The function calculating the average of returned record values is
4	316	AVG()	COUNT()	AGGREGATE()	SUM()	eng	The function summing up record values is
4	317	GRANT ROOT	ROOT PRIVILEGES	GRANT *	GRANT ALL	eng	Which function grants all permissions?
4	318	DELETE	DOWNGRADE	UNGRANT	REVOKE	eng	What is the opposite function to GRANT?
4	319	column	table	database	row	eng	What is a tuple?
4	320	NOT NULL	DEFAULT	CHANGE	UNIQUE	eng	An attribute that ensures values cannot be repeated is
4	321	To another column within the same table	To another row within the same table	To a key in the database	To a key in another table	eng	What does the FOREIGN KEY field refer to?
4	322	It is used to check a value; if it matches the condition, it returns 1; if false, it returns 0	It is used to check data consistency in the table	It limits the number of record creations in the table	It restricts the range of values that can be placed in a column	eng	What is the purpose of using the CHECK attribute?
4	323	There is no such concept as an index in relation to databases	They are used to generate a brief summary of the data in the table	They facilitate user interaction with the table	They are used for faster data retrieval from the database	eng	What is the purpose of using indexes?
4	324	DROP INDEX index_name;	DROP INDEX index_name ON table_name;	DROP INDEX table_name.index_name;	ALTER TABLE table_name DROP INDEX index_name;	eng	How to remove an index in a table created in MySQL?
4	325	DATETIME	TIMESTAMP	DATE TODAY	DATE	eng	Which data type will return the date in the format YYYY-MM-DD?
4	326	MODIFY TABLE	CHANGE TABLE	You cannot modify the created table	ALTER TABLE	eng	Which command can be used to modify the table structure?
4	327	Table appearance	New table created based on the old table, which has been replaced by it	Preview of individual records in the table	A virtual table created based on a query	eng	What is a table view?
4	328	SELECT COPY	COPY	ALTER TABLE table_name COPY	SELECT INTO	eng	How can you copy data from one table to another?
4	329	SELECT *	SELECT UNIQUE	UNIQUE	SELECT DISTINCT	eng	Which instruction should be used to return records without repetitions?
4	330	SELECT * FROM Customers NOT WHERE Country = 'Poland';	SELECT * FROM Customers WHERE Country = 'Poland';	SELECT NOT * FROM Customers WHERE Country = 'Poland';	SELECT * FROM Customers WHERE NOT Country = 'Poland';	eng	Which command is correct?
4	331	SELECT * FROM table WHERE column = NULL;	SELECT * FROM table WHERE column = NULL;	SELECT * FROM table WHERE column = ;	SELECT * FROM table WHERE column IS NULL;	eng	How to check in a query if a certain value is NULL?
4	332	ALTER TABLE Customers SET ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers SET ContactName = 'Andrzej H' AND City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers SET ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	UPDATE Customers SET ContactName = 'Andrzej H', City= 'BERLIN' WHERE CustomerID = 1;	eng	Which query is correct?
4	333	DELETE table_name;	REMOVE table_name;	ALTER TABLE table_name DELETE ALL;	DELETE FROM table_name;	eng	How to delete all records without deleting the table?
4	334	DELETE table_name;	REMOVE table_name;	DELETE FROM table_name;	DROP TABLE table_name;	eng	How to delete an entire table?
4	335	MIN()	SUM()	COUNT()	AVERAGE()	eng	Which aggregate function does not exist in SQL?
4	336	% represents one or more characters	% represents 0 or 1 character	% represents a single character	% represents 0, 1 or more characters	eng	What does % represent in the context of the LIKE operator?
4	337	_ represents zero, one, or more characters	_ represents zero or one character	_ represents one or more characters	_ represents a single character	eng	What does _ represent in the context of the LIKE operator?
4	338	None of the mentioned queries are correct	SELECT * FROM Customers WHERE Country = 'Poland', 'Ukraine', 'Finland';	SELECT * FROM Customers WHERE Country LIKE ('Poland', 'Ukraine', 'Finland');	SELECT * FROM Customers WHERE Country IN ('Poland', 'Ukraine', 'Finland');	eng	Which query is correct?
4	339	text only	only numbers	numbers and text	numbers, text, dates	eng	The BETWEEN operator can be used for:
4	340	IN	AND	NOT	ON	eng	Which of the listed operators cannot be combined with the BETWEEN operator?
\.


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 215
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cards_id_seq', 326, true);


--
-- TOC entry 3369 (class 0 OID 0)
-- Dependencies: 217
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 340, true);


--
-- TOC entry 3211 (class 2606 OID 16396)
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 16405)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


-- Completed on 2024-05-07 18:19:47 UTC

--
-- PostgreSQL database dump complete
--

