# Trabalho Final - Segurança da Informação
Ao considerar o projeto proposto, a arquitetura de rede escolhida para implementação consiste em um roteador conectado a um link externo de acesso à internet por fibra óptica, duas máquinas em rede cabeada com sistema operacional Windows 10 e diversos dispositivos móveis (Android e IOS) circulando pela rede.

A organização a ser implementada está associada a uma loja de dispositivos eletrônicos e telefonia móvel. As máquinas em rede cabeada têm a finalidade de realizar pedidos, atendimento e funções administrativas e internas. A rede wireless é disponibilizada para facilitar a comunicação entre clientes e a loja, além de fornecer acesso à Internet aos consumidores para realizarem pagamentos e se sentirem confortáveis e bem recebidos no estabelecimento.

Diante do exposto, sugere-se uma infraestrutura de rede On Premise, na qual foram aplicadas regras de segurança e performance, como configurações de serviços DHCP, DNS e Firewall, juntamente com a avaliação da topologia da rede e a supervisão do acesso.

No cenário atual, a rede carece de mecanismos de segurança adequados. A mesma interface de rede utilizada pelos clientes é a mesma para o funcionamento interno da empresa, criando brechas críticas de segurança. Uma observação importante é a falta de implementação de um Firewall para proporcionar maior proteção à rede. Nesse sentido, torna-se necessário dividir a rede em sub-redes, garantindo que as máquinas da empresa não estejam diretamente interligadas com os clientes.

Com o objetivo de elevar o nível de segurança na rede, foi utilizada a ferramenta Nessus Cloud, um programa de verificação de falhas/vulnerabilidades de segurança composto por cliente e servidor, sendo que a análise propriamente dita é realizada pelo servidor.

Ao conduzir a análise na rede, identificamos pacotes desatualizados. Nesse contexto, a rede adota uma política de atualização mensal, e para solucionar esses problemas, aplicamos o firewall UFW (Uncomplicated Firewall, ou Firewall Descomplicado) para filtrar os pacotes por meio do iptables.

Além disso, a alteração da senha do roteador da empresa é uma implementação fundamental, pois o uso da senha padrão abre espaço para o gerenciamento por terceiros em toda a estrutura de rede, possibilitando intervenções e a aplicação de um falso DNS.

##### Resultados Esperados:
A implementação proposta visa reduzir significativamente as vulnerabilidades na rede, fortalecendo as defesas contra ameaças cibernéticas. Pretende-se aprimorar a detecção e resposta a incidentes, proporcionando uma resposta ágil e eficaz. Além disso, busca-se reforçar a confiabilidade e integridade dos dados corporativos, assegurando um ambiente digital seguro e resiliente para todas as operações da empresa.
