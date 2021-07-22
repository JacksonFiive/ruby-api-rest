#language: pt

Funcionalidade: Realizar uma consulta de cep/endereço 
Como um aplicação de serviço
Quero enviar requisições  de consulta de Endereço 
para verificar se CEP informado é valido e caso não seja ocorra uma falha 


@consultarSucesso
Cenario: Consulta CEP COM SUCESSO 
Dado que eu tenha um CEP VÁLIDO
    | cep | 06624490 | 
Quando envio uma requisição para consulta de endereço 
Então posso visualizar o código do IBGE



@consultaFalha
Cenario: Consulta CEP COM FALHA
Dado que eu tenha um CEP VÁLIDO
    | cep | 0666255 | 
Quando envio uma requisição para consulta de endereço 
Então a API deve retornar um erro

