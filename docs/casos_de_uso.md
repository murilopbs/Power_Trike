# Casos de Uso

## Introdução
Casos de uso é uma técnica utilizada na engenharia de software para capturar, descrever e especificar as interações entre um sistema e seus usuários ou outros sistemas. Eles são uma forma de representar requisitos funcionais, ou seja, as funcionalidades ou serviços que o sistema deve fornecer.

Este documento de casos de uso descreve uma série de casos de uso para o aplicativo de eletroestimulação muscular, destinado a fornecer aos usuários uma experiência personalizada de eletroestimulação muscular. O aplicativo permite a configuração de parâmetros, ativação da eletroestimulação muscular e interação com dispositivos via Bluetooth.

## Metodologia
Os casos de uso a seguir foram elaborados seguindo a notação padrão de modelagem de sistemas, utilizando uma abordagem centrada no usuário. Cada caso de uso é estruturado com seções específicas, incluindo Atores, Pré-condições, Cenários Principais e Alternativos, e Pós-condições.

O objetivo principal deste documento é fornecer uma visão abrangente das interações do usuário com o aplicativo, destacando os principais fluxos de atividades e possíveis cenários alternativos. Isso serve como um guia útil para desenvolvedores, designers e demais envolvidos no processo de desenvolvimento do aplicativo.

## Casos de Uso

### UC01 - Ativar Eletroestimulação Muscular
<table>
  <thead>
    <tr>
      <th colspan="2" style="text-align:center;">Ativar Eletroestimulação Muscular</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atores</td>
      <td>Usuário</td>
    </tr>
    <tr>
      <td>Pré-condição</td>
      <td>O aplicativo estar instalado.</td>
    </tr>
    <tr>
      <td>Cenário Principal</td>
     <td>a) O usuário ativa a eletroestímulação muscular.<br/>
      b) O aplicativo envia os parâmetros necessários ao dispositivo.<br/>
      c) O dispositivo ativa o músculo de acordo com os parâmetros.
      </td>
    </tr>
    <tr>
      <td>Cenário Alternativo</td>
      <td>a) (c) A comunicação com o dispositivo falha.<br/>
          - Uma mensagem de erro aparece.
      </td>
    </tr>
  </tbody>
</table>

### UC02 - Selecionar Parâmetros
<table>
  <thead>
    <tr>
      <th colspan="2" style="text-align:center;">Selecionar Parâmetros</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atores</td>
      <td>Usuário</td>
    </tr>
    <tr>
      <td>Pré-condição</td>
      <td>O aplicativo estar instalado.</td>
    </tr>
    <tr>
      <td>Cenário Principal</td>
      <td>a) O usuário inicia o aplicativo.<br/>
          b) O usuário seleciona "Configurar Parâmetros”.<br/>
          c) O usuário escolhe o comprimento de onda, frequência e músculo alvo.<br/>
          d) O usuário confirma as seleções.
      </td>
    </tr>
    <tr>
      <td>Cenário Alternativo</td>
      <td>a) (d) O usuário cancela a seleção e retorna ao menu principal.<br/>
          - Os dados não ficarão salvos.
      </td>
    </tr>
    <tr>
      <td>Pós-condição</td>
      <td>Os parâmetros selecionados são armazenados para futuras sessões de treinamento.</td>
    </tr>
  </tbody>
</table>

### UC03 - Conectar ao Dispositivo
<table>
  <thead>
    <tr>
      <th colspan="2" style="text-align:center;">Conectar ao Dispositivo</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atores</td>
      <td>Usuário</td>
    </tr>
    <tr>
      <td>Pré-condição</td>
      <td>O aplicativo estar instalado e o dispositivo Bluetooth está disponível.</td>
    </tr>
    <tr>
      <td>Cenário Principal</td>
      <td>a) O usuário inicia o aplicativo.<br/>
          b) O usuário seleciona "Conectar ao Dispositivo".<br/>
          c) O aplicativo inicia a busca por dispositivos Bluetooth disponíveis.<br/>
          d) O aplicativo estabelece a conexão com o dispositivo.
      </td>
    </tr>
    <tr>
      <td>Cenário Alternativo</td>
      <td>a) (d) A conexão com o dispositivo falha.<br/>
          - Uma mensagem de erro aparece.
      </td>
    </tr>
    <tr>
      <td>Pós-condição</td>
      <td>O aplicativo está conectado ao dispositivo de controle muscular via Bluetooth.</td>
    </tr>
  </tbody>
</table>

### UC04 - Salvar Parâmetros na Nuvem
<table>
  <thead>
    <tr>
      <th colspan="2" style="text-align:center;">Salvar Parâmetros na Nuvem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Atores</td>
      <td>Usuário</td>
    </tr>
    <tr>
      <td>Pré-condição</td>
      <td>Os parâmetros estão configurados no aplicativo.</td>
    </tr>
    <tr>
      <td>Cenário Principal</td>
      <td>a) O usuário seleciona a opção "Salvar na Nuvem".<br/>
          b) O aplicativo solicita as credenciais de login do usuário.<br/>
          c) O usuário fornece as credenciais e confirma.<br/>
          d) O aplicativo envia os parâmetros para o serviço de armazenamento na nuvem.<br/>
      </td>
    </tr>
    <tr>
      <td>Cenário Alternativo</td>
      <td>a) (b) O usuário cancela a operação.<br/>
          - O aplicativo retorna ao estado anterior sem salvar na nuvem.
      </td>
    </tr>
    <tr>
      <td>Pós-condição</td>
      <td>Os parâmetros são salvos na nuvem e associados à conta do usuário.</td>
    </tr>
  </tbody>
</table>

## Histórico de Alterações

| Versão | Descrição                                        | Responsáveis                                   |  Data       |
| ------ | ------------------------------------------------ | ---------------------------------------------- |  ---------- |
| 0.1    | Criação e organização dos tópicos do documento   | [Murilo Perazzo](https://github.com/murilopbs) | 16/11/2023 |
| 0.2    | Melhoria da introdução e correção dos casos de uso | [Ian da Costa](https://github.com/ian-dcg) | 17/11/2023 |
