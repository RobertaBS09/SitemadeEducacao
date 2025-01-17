-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2024 às 21:17
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `educacao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `sobrenome` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `sobrenome`, `email`, `cidade`) VALUES
(1, 'Lucas', 'Almeida', 'lucas.almeida@jfreducacao.com.br', 'São Paulo'),
(2, 'Mariana', 'Silva', 'mariana.silva@jfreducacao.com.br', 'Rio de Janeiro'),
(3, 'Pedro', 'Santos', 'pedro.santos@jfreducacao.com.br', 'Salvador'),
(4, 'Ana', 'Costa', 'ana.costa@jfreducacao.com.br', 'Belo Horizonte'),
(5, 'Gabriel', 'Oliveira', 'gabriel.oliveira@jfreducacao.com.br', 'Porto Alegre'),
(6, 'Beatriz', 'Pereira', 'beatriz.pereira@jfreducacao.com.br', 'Curitiba'),
(7, 'João', 'Lima', 'joao.lima@jfreducacao.com.br', 'Brasília'),
(8, 'Larissa', 'Fernandes', 'larissa.fernandes@jfreducacao.com.br', 'Recife'),
(9, 'Felipe', 'Rodrigues', 'felipe.rodrigues@jfreducacao.com.br', 'Manaus'),
(10, 'Camila', 'Souza', 'camila.souza@jfreducacao.com.br', 'Fortaleza'),
(11, 'Rafael', 'Martins', 'rafael.martins@jfreducacao.com.br', 'Campinas'),
(12, 'Isabela', 'Mendes', 'isabela.mendes@jfreducacao.com.br', 'Florianópolis'),
(13, 'Thiago', 'Barbosa', 'thiago.barbosa@jfreducacao.com.br', 'Goiânia'),
(14, 'Julia', 'Freitas', 'julia.freitas@jfreducacao.com.br', 'Vitória'),
(15, 'Guilherme', 'Gomes', 'guilherme.gomes@jfreducacao.com.br', 'Natal'),
(16, 'Carolina', 'Araújo', 'carolina.araujo@jfreducacao.com.br', 'São Luís'),
(17, 'Miguel', 'Ribeiro', 'miguel.ribeiro@jfreducacao.com.br', 'João Pessoa'),
(18, 'Fernanda', 'Duarte', 'fernanda.duarte@jfreducacao.com.br', 'Teresina'),
(19, 'Matheus', 'Silva', 'matheus.silva@jfreducacao.com.br', 'Maceió'),
(20, 'Sofia', 'Carvalho', 'sofia.carvalho@jfreducacao.com.br', 'Cuiabá'),
(21, 'Vinicius', 'Nunes', 'vinicius.nunes@jfreducacao.com.br', 'Campo Grande'),
(22, 'Luana', 'Batista', 'luana.batista@jfreducacao.com.br', 'Belém'),
(23, 'Henrique', 'Farias', 'henrique.farias@jfreducacao.com.br', 'Palmas'),
(24, 'Aline', 'Dias', 'aline.dias@jfreducacao.com.br', 'Rio Branco'),
(25, 'Renan', 'Xavier', 'renan.xavier@jfreducacao.com.br', 'Porto Velho'),
(26, 'Carla', 'Monteiro', 'carla.monteiro@jfreducacao.com.br', 'Macapá'),
(27, 'Rodrigo', 'Reis', 'rodrigo.reis@jfreducacao.com.br', 'Boa Vista'),
(28, 'Patrícia', 'Santana', 'patricia.santana@jfreducacao.com.br', 'São Paulo'),
(29, 'Igor', 'Matos', 'igor.matos@jfreducacao.com.br', 'Rio de Janeiro'),
(30, 'Bruna', 'Rocha', 'bruna.rocha@jfreducacao.com.br', 'Salvador'),
(31, 'Renata', 'Teixeira', 'renata.teixeira@jfreducacao.com.br', 'Belo Horizonte'),
(32, 'Caio', 'Neves', 'caio.neves@jfreducacao.com.br', 'Porto Alegre'),
(33, 'Daniela', 'Tavares', 'daniela.tavares@jfreducacao.com.br', 'Curitiba'),
(34, 'Luan', 'Machado', 'luan.machado@jfreducacao.com.br', 'Brasília'),
(35, 'Giovana', 'Nascimento', 'giovana.nascimento@jfreducacao.com.br', 'Recife'),
(36, 'Lucas', 'Moraes', 'lucas.moraes@jfreducacao.com.br', 'Manaus'),
(37, 'Michele', 'Cavalcanti', 'michele.cavalcanti@jfreducacao.com.br', 'Fortaleza'),
(38, 'Felipe', 'Correia', 'felipe.correia@jfreducacao.com.br', 'Campinas'),
(39, 'Sara', 'Azevedo', 'sara.azevedo@jfreducacao.com.br', 'Florianópolis'),
(40, 'Pablo', 'Barros', 'pablo.barros@jfreducacao.com.br', 'Goiânia'),
(41, 'Alice', 'Siqueira', 'alice.siqueira@jfreducacao.com.br', 'Vitória'),
(42, 'Diego', 'Moraes', 'diego.moraes@jfreducacao.com.br', 'Natal'),
(43, 'Luiza', 'Silva', 'luiza.silva@jfreducacao.com.br', 'São Luís'),
(44, 'Matheus', 'Dias', 'matheus.dias@jfreducacao.com.br', 'João Pessoa'),
(45, 'Eduarda', 'Viana', 'eduarda.viana@jfreducacao.com.br', 'Teresina'),
(46, 'Gustavo', 'Monteiro', 'gustavo.monteiro@jfreducacao.com.br', 'Maceió'),
(47, 'André', 'Alves', 'andre.alves@jfreducacao.com.br', 'Cuiabá'),
(48, 'Marina', 'Ramos', 'marina.ramos@jfreducacao.com.br', 'Campo Grande'),
(49, 'Hugo', 'Cardoso', 'hugo.cardoso@jfreducacao.com.br', 'Belém'),
(50, 'Luana', 'Sousa', 'luana.sousa@jfreducacao.com.br', 'Palmas'),
(51, 'Vitor', 'Martins', 'vitor.martins@jfreducacao.com.br', 'Rio Branco'),
(52, 'Gabriela', 'Lopes', 'gabriela.lopes@jfreducacao.com.br', 'Porto Velho'),
(53, 'Leonardo', 'Fernandes', 'leonardo.fernandes@jfreducacao.com.br', 'Macapá'),
(54, 'Amanda', 'Oliveira', 'amanda.oliveira@jfreducacao.com.br', 'Boa Vista'),
(55, 'Bruno', 'Vieira', 'bruno.vieira@jfreducacao.com.br', 'São Paulo'),
(56, 'Lucas', 'Farias', 'lucas.farias@jfreducacao.com.br', 'Rio de Janeiro'),
(57, 'Maria', 'Costa', 'maria.costa@jfreducacao.com.br', 'Salvador'),
(58, 'João', 'Mendes', 'joao.mendes@jfreducacao.com.br', 'Belo Horizonte'),
(59, 'Cecília', 'Pereira', 'cecilia.pereira@jfreducacao.com.br', 'Porto Alegre'),
(60, 'Vinícius', 'Rodrigues', 'vinicius.rodrigues@jfreducacao.com.br', 'Curitiba'),
(61, 'Marcos', 'Almeida', 'marcos.almeida@jfreducacao.com.br', 'Brasília'),
(62, 'Natália', 'Souza', 'natalia.souza@jfreducacao.com.br', 'Recife'),
(63, 'Ricardo', 'Santos', 'ricardo.santos@jfreducacao.com.br', 'Manaus'),
(64, 'Juliana', 'Lima', 'juliana.lima@jfreducacao.com.br', 'Fortaleza'),
(65, 'Rafael', 'Ferreira', 'rafael.ferreira@jfreducacao.com.br', 'Campinas'),
(66, 'Isabela', 'Carvalho', 'isabela.carvalho@jfreducacao.com.br', 'Florianópolis'),
(67, 'Rodrigo', 'Gonçalves', 'rodrigo.goncalves@jfreducacao.com.br', 'Goiânia'),
(68, 'Larissa', 'Nunes', 'larissa.nunes@jfreducacao.com.br', 'Vitória'),
(69, 'Thiago', 'Reis', 'thiago.reis@jfreducacao.com.br', 'Natal'),
(70, 'Bianca', 'Moura', 'bianca.moura@jfreducacao.com.br', 'São Luís'),
(71, 'Renato', 'Viana', 'renato.viana@jfreducacao.com.br', 'João Pessoa'),
(72, 'Pedro', 'Oliveira', 'pedro.oliveira@jfreducacao.com.br', 'Teresina'),
(73, 'Camila', 'Freitas', 'camila.freitas@jfreducacao.com.br', 'Maceió'),
(74, 'André', 'Batista', 'andre.batista@jfreducacao.com.br', 'Cuiabá'),
(75, 'Sabrina', 'Barbosa', 'sabrina.barbosa@jfreducacao.com.br', 'Campo Grande'),
(76, 'Gustavo', 'Moraes', 'gustavo.moraes@jfreducacao.com.br', 'Belém'),
(77, 'Eduardo', 'Dias', 'eduardo.dias@jfreducacao.com.br', 'Palmas'),
(78, 'Danilo', 'Ribeiro', 'danilo.ribeiro@jfreducacao.com.br', 'Rio Branco'),
(79, 'Paula', 'Almeida', 'paula.almeida@jfreducacao.com.br', 'Porto Velho'),
(80, 'Lucas', 'Cardoso', 'lucas.cardoso@jfreducacao.com.br', 'Macapá'),
(81, 'Renata', 'Rocha', 'renata.rocha@jfreducacao.com.br', 'Boa Vista');

-- --------------------------------------------------------

--
-- Estrutura para tabela `boletim`
--

CREATE TABLE `boletim` (
  `id` int(11) NOT NULL,
  `materia` varchar(2000) NOT NULL,
  `notamin1` double NOT NULL,
  `notamin2` double NOT NULL,
  `notanecess` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `boletim`
--

INSERT INTO `boletim` (`id`, `materia`, `notamin1`, `notamin2`, `notanecess`) VALUES
(1, 'Ciências', 50, 60, 55),
(2, 'Matemática', 60, 70, 65),
(3, 'História', 45, 55, 50),
(4, 'Geografia', 50, 60, 55),
(5, 'Física', 55, 65, 60),
(6, 'Química', 55, 65, 60),
(7, 'Biologia', 50, 60, 55),
(8, 'Português', 50, 60, 55),
(9, 'Inglês', 45, 55, 50),
(10, 'Artes', 40, 50, 45),
(11, 'Filosofia', 45, 55, 50),
(12, 'Sociologia', 45, 55, 50),
(13, 'Educação Física', 35, 45, 40);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` varchar(5000) NOT NULL,
  `cargahoraria` int(11) NOT NULL,
  `plataforma` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `descricao`, `cargahoraria`, `plataforma`) VALUES
(1, 'Curso de Ciências', 'Introdução ao estudo das ciências naturais, abrangendo conceitos de biologia, física e química.', 40, 'Coursera'),
(2, 'Curso de Matemática', 'Estudo dos fundamentos de matemática, incluindo álgebra, geometria e cálculo.', 60, 'EdX'),
(3, 'Curso de História', 'Exploração dos principais eventos históricos, desde as civilizações antigas até a era contemporânea.', 35, 'Khan Academy'),
(4, 'Curso de Geografia', 'Abordagem dos conceitos de geografia física e humana, com foco em clima, relevo e sociedade.', 30, 'Udemy'),
(5, 'Curso de Física', 'Curso sobre os princípios fundamentais da física, incluindo mecânica, energia e ondas.', 50, 'Coursera'),
(6, 'Curso de Química', 'Estudo dos conceitos básicos da química, com foco em reações químicas e propriedades da matéria.', 45, 'EdX'),
(7, 'Curso de Biologia', 'Estudo dos organismos vivos, células, genética e ecossistemas.', 55, 'Udemy'),
(8, 'Curso de Português', 'Curso de gramática e literatura da língua portuguesa, com foco em interpretação de textos.', 40, 'Khan Academy'),
(9, 'Curso de Inglês', 'Curso de inglês para iniciantes, focado em leitura, escrita e fala.', 30, 'Duolingo'),
(10, 'Curso de Artes', 'Introdução às artes visuais, com foco em técnicas de desenho, pintura e história da arte.', 25, 'Coursera'),
(11, 'Curso de Filosofia', 'Estudo das principais correntes filosóficas e pensadores, desde a antiguidade até a contemporaneidade.', 35, 'EdX'),
(12, 'Curso de Sociologia', 'Introdução à sociologia, estudando as interações sociais e a estrutura das sociedades.', 40, 'Coursera'),
(13, 'Curso de Educação Física', 'Curso sobre os benefícios da atividade física e a importância de uma vida saudável.', 20, 'Udemy');

-- --------------------------------------------------------

--
-- Estrutura para tabela `educadores`
--

CREATE TABLE `educadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `sobrenome` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `educadores`
--

INSERT INTO `educadores` (`id`, `nome`, `sobrenome`, `area`, `cidade`, `email`) VALUES
(1, 'Ana', 'Souza', 'Ciências', 'São Paulo', 'ana.souzaeduc@jfreducacao.com.br'),
(2, 'Bruno', 'Santos', 'Matemática', 'Rio de Janeiro', 'bruno.santoseduc@jfreducacao.com.br'),
(3, 'Carlos', 'Oliveira', 'História', 'Salvador', 'carlos.oliveiraeduc@jfreducacao.com.br'),
(4, 'Daniela', 'Silva', 'Geografia', 'Belo Horizonte', 'daniela.silvaeduc@jfreducacao.com.br'),
(5, 'Eduardo', 'Pereira', 'Física', 'Porto Alegre', 'eduardo.pereiraeduc@jfreducacao.com.br'),
(6, 'Fernanda', 'Costa', 'Química', 'Curitiba', 'fernanda.costaeduc@jfreducacao.com.br'),
(7, 'Gustavo', 'Almeida', 'Biologia', 'Brasília', 'gustavo.almeidaeduc@jfreducacao.com.br'),
(8, 'Helena', 'Mendes', 'Português', 'Recife', 'helena.mendeseduc@jfreducacao.com.br'),
(9, 'Igor', 'Lima', 'Inglês', 'Manaus', 'igor.limaeduc@jfreducacao.com.br'),
(10, 'Juliana', 'Ribeiro', 'Artes', 'Fortaleza', 'juliana.ribeiroeduc@jfreducacao.com.br'),
(11, 'Karina', 'Araújo', 'Filosofia', 'Campinas', 'karina.araujoeduc@jfreducacao.com.br'),
(12, 'Leonardo', 'Rocha', 'Sociologia', 'Florianópolis', 'leonardo.rochaeduc@jfreducacao.com.br'),
(13, 'Maria', 'Martins', 'Educação Física', 'Goiânia', 'maria.martinseduc@jfreducacao.com.br'),
(14, 'Natan', 'Gomes', 'Ciências', 'Vitória', 'natan.gomeseduc@jfreducacao.com.br'),
(15, 'Olivia', 'Duarte', 'Matemática', 'Natal', 'olivia.duarteeduc@jfreducacao.com.br'),
(16, 'Pedro', 'Lopes', 'História', 'São Luís', 'pedro.lopeseduc@jfreducacao.com.br'),
(17, 'Quitéria', 'Fernandes', 'Geografia', 'João Pessoa', 'quiteria.fernandeseduc@jfreducacao.com.br'),
(18, 'Ricardo', 'Silva', 'Física', 'Teresina', 'ricardo.silvaeduc@jfreducacao.com.br'),
(19, 'Sabrina', 'Carvalho', 'Química', 'Maceió', 'sabrina.carvalhoeduc@jfreducacao.com.br'),
(20, 'Thiago', 'Azevedo', 'Biologia', 'Cuiabá', 'thiago.azevedoeduc@jfreducacao.com.br'),
(21, 'Úrsula', 'Barros', 'Português', 'Campo Grande', 'ursula.barroseduc@jfreducacao.com.br'),
(22, 'Vicente', 'Teixeira', 'Inglês', 'Belém', 'vicente.teixeiraeduc@jfreducacao.com.br'),
(23, 'William', 'Farias', 'Artes', 'Palmas', 'william.fariaseduc@jfreducacao.com.br'),
(24, 'Xênia', 'Cunha', 'Filosofia', 'Rio Branco', 'xenia.cunhaeduc@jfreducacao.com.br'),
(25, 'Yuri', 'Freitas', 'Sociologia', 'Porto Velho', 'yuri.freitaseduc@jfreducacao.com.br'),
(26, 'Zoraide', 'Ramos', 'Educação Física', 'Macapá', 'zoraide.ramoseduc@jfreducacao.com.br'),
(27, 'Arthur', 'Coelho', 'Ciências', 'Boa Vista', 'arthur.coelhoeduc@jfreducacao.com.br'),
(28, 'Beatriz', 'Reis', 'Matemática', 'São Paulo', 'beatriz.reiseduc@jfreducacao.com.br'),
(29, 'Caio', 'Ferreira', 'História', 'Rio de Janeiro', 'caio.ferreiraeduc@jfreducacao.com.br'),
(30, 'Diana', 'Neves', 'Geografia', 'Salvador', 'diana.neveseduc@jfreducacao.com.br'),
(31, 'Enzo', 'Nascimento', 'Física', 'Belo Horizonte', 'enzo.nascimentoeduc@jfreducacao.com.br'),
(32, 'Fabiana', 'Tavares', 'Química', 'Porto Alegre', 'fabiana.tavareseduc@jfreducacao.com.br'),
(33, 'Gabriel', 'Monteiro', 'Biologia', 'Curitiba', 'gabriel.monteiroeduc@jfreducacao.com.br'),
(34, 'Heloísa', 'Batista', 'Português', 'Brasília', 'heloisa.batistaeduc@jfreducacao.com.br'),
(35, 'Isabela', 'Magalhães', 'Inglês', 'Recife', 'isabela.magalhaeseduc@jfreducacao.com.br'),
(36, 'João', 'Matos', 'Artes', 'Manaus', 'joao.matoseduc@jfreducacao.com.br'),
(37, 'Luana', 'Vasconcelos', 'Filosofia', 'Fortaleza', 'luana.vasconceloseduc@jfreducacao.com.br'),
(38, 'Marcos', 'Santana', 'Sociologia', 'Campinas', 'marcos.santanaeduc@jfreducacao.com.br'),
(39, 'Natália', 'Figueiredo', 'Educação Física', 'Florianópolis', 'natalia.figueiredoeduc@jfreducacao.com.br'),
(40, 'Otávio', 'Xavier', 'Ciências', 'Goiânia', 'otavio.xaviereduc@jfreducacao.com.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sapoio`
--

CREATE TABLE `sapoio` (
  `id` int(11) NOT NULL,
  `materia` varchar(200) NOT NULL,
  `site` varchar(200) NOT NULL,
  `tarefasemana` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sapoio`
--

INSERT INTO `sapoio` (`id`, `materia`, `site`, `tarefasemana`) VALUES
(1, 'Matemática', 'Khan Academy', 'Resolver 5 exercícios de álgebra'),
(2, 'Física', 'Plurall', 'Assistir ao vídeo sobre leis de Newton'),
(3, 'Química', 'Escola Virtual Bradesco', 'Ler a apostila sobre reações químicas'),
(4, 'Biologia', 'Stoodi', 'Responder questões sobre ecossistemas'),
(5, 'Geografia', 'Educa+ Brasil', 'Realizar mapa mental sobre clima e relevo'),
(6, 'Inglês', 'Duolingo', 'Completar a lição sobre pronomes pessoais'),
(7, 'História', 'Descomplica', 'Assistir à aula sobre a Revolução Francesa'),
(8, 'Filosofia', 'Me Salva', 'Responder ao questionário sobre Sócrates');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `boletim`
--
ALTER TABLE `boletim`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `educadores`
--
ALTER TABLE `educadores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `sapoio`
--
ALTER TABLE `sapoio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `boletim`
--
ALTER TABLE `boletim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `educadores`
--
ALTER TABLE `educadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `sapoio`
--
ALTER TABLE `sapoio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
