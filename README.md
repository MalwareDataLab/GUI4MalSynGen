# GUI4MalSynGen

GUI4MalSynGen é uma interface gráfica para o MalSynGen, uma ferramenta integrada à plataforma Malware DataLab, dedicada à geração de dados tabulares sintéticos voltados para o ensino de técnicas de aprendizado profundo. Este projeto auxilia Hackers do Bem a expandirem datasets de malwares Android, permitindo que se preparem para combater ameaças cada vez mais sofisticadas.

## 📚 Sumário

- [Arquitetura](#arquitetura)
- [Requisitos](#requisitos)
- [Instalação](#instalação)
- [Execução com Docker](#execução-com-docker)
- [Uso](#uso)
- [Execução de Campanhas de Treinamento](#execução-de-campanhas-de-treinamento)


<a id="arquitetura"></a>
## 🏛️ Arquitetura

<div align="center">
<img src="./frontend/TCC/src/assets/img/system_context2.jpg" alt="Arquitetura da aplicação" width="70%">
</div>

<a id="requisitos"></a>
## 📦 Requisitos
 
- Sistema operacional: **Ubuntu 22.04** (MacOS/Windows em fase experimental)
- Memória: **Mínimo de 4GB de RAM**
- Armazenamento: **Mínimo de 10GB de espaço livre em disco**
- **Git** instalado
- **Docker** versão 27.2.1
- **Python** versão 3.8.10 ou superior

<a id="instalação"></a>
## 👨‍💻 Instalação

Clone o repositório do projeto:

```bash
git clone https://github.com/LeonardoSonco/GUI4MalSynGen.git
```

<a id="execução-com-docker"></a>
## 🛠️ Execução com Docker

**Backend da aplicação**
- Abra o terminal.
- Navegue até a pasta autodroid.
- Execute o comando abaixo para iniciar o backend:
```bash
./start.sh
```

**Frontend da aplicação**
- Abra um novo terminal.
- Navegue até a pasta raiz do projeto.
- Acesse a pasta frontend.
- Execute o script com o comando:

```bash
./start.sh
```
**⚠️ Observações Importantes** 
</br></br>
Se algum do script ./start.sh não estiver como executável, basta usar o comando abaixo para dar permissão de execução:
```bash
chmod +x start.sh
```
</br>
Caso apareça a mensagem de permission denied ao tentar executar o script, basta repetir utilizando o comando:

```bash
sudo su
```

<a id="uso"></a>
## ⚙️ Uso
Após a instalação e execução do Docker, a aplicação estará disponível localmente para uso:

- Abra o navegador.
- Digite na barra de busca:
```bash 
localhost:3000
```
Pronto! Agora você acessou o conteúdo localmente em sua máquina.

<a id="execução-de-campanhas-de-treinamento"></a>
## 🚀 Execução de Campanhas de Treinamento 
Para executar campanhas de treinamento, siga os passos abaixo:

1. Na interface, vá até o card de Parâmetros de Treinamento, e selecione a opção Custom preenchendo com os seguintes valores:
- verbosity: 20
- dense layer sizes g: 256
- dense layer sizes d: 256
- number epochs: 1000

2. Escolha o dataset disponível na pasta Dataset do repositório, chamado drebin215_small_64Malwares_64Benign.

3. Clique em Adicionar para que esses parâmetros sejam adicionados à lista de execução.

4. Clique no botão Iniciar para começar o treinamento. Se nada aparecer no card de Processos, clique no botão de Refresh para atualizar.

5. Quando o processo estiver com o ícone de check (✔), clique sobre ele para visualizar os resultados.
</br></br>
**⚠️ Observações Importantes ⚠️** 
</br></br>
Se ocorrer um erro de autorização ou falha na conexão, será necessário limpar o local storage da página no navegador, excluir todos os containers relacionados ao experimento e reiniciar a execução do Docker ([Execução com Docker](#execução-com-docker)).
</br>


Na página de resultados, você encontrará gráficos gerados durante o treinamento do dataset com os parâmetros configurados. Também é possível baixar o dataset treinado, se desejar.
