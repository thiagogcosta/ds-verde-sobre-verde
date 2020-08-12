# Teste 1 para Computer Scientist na Jacto Agrícola

# Problema e Justificativas

As ervas daninhas estão se tornando resistentes a diversos defensivos agrícolas, demandando tratamentos mais específicos que por sua vez são mais custosos.

Devido ao alto custo da aplicação dos defensivos agrícolas específicos, é uma boa prática identificar e classificar as ervas daninhas na presença de uma cultura/plantio já existente.

A abordagem tradicional utiliza uma prescrição do defensivo para área total.

A Aplicação Localizada, com a identificação e classificação de ervas daninhas, é possível realizar um manejo inteligente, pontual e direcionado nas manchas de infestação. O resultado da Aplicação Localizada é a minimização dos impactos ambientais e redução de custos operacionais.

---

# Descrição dos Dados

Os dados presentes neste repositório estão divididos em 5 categorias:

1. Braquiaria - Cultivo/Plantio principal
2. Amargoso - Erva daninha invasora encontrada na área de cultivo de braquiaria
3. Caruru - Erva daninha invasora encontrada na área de cultivo de braquiaria
4. Juazeiro - Erva daninha invasora encontrada na área de cultivo de braquiaria
5. Leiteiro - Erva daninha invasora encontrada na área de cultivo de braquiaria

Cada linha dos arquivos representam a leitura/saída de um sensor multi-espectral. O princípio de funcionamento do sensor é emitir uma luz e capturar os variados comprimentos de onda refletidos pelas plantas.

É importante saber que por se tratar de ervas daninhas invasoras, em todas medições/capturas dos dados das ervas daninhas o cultivo/planta de fundo é a braquiaria. Durante a coleta de dados para as ervas daninhas é possível que 80% da luz refletida para o sensor venha da erva daninha em questão e 20% da luz refletida seja proveniente da braquiaria.

# Desafio

O objetivo do desafio é criar uma solução de Inteligência Artificial que seja capaz de identificar e classificar as leituras do sensor, seguindo a estrutura de informações contidas nos arquivos de dados experimentais.

O seguinte resultado é esperado:

1. Ao fornecer uma linha de dados proveniente do arquivo Braquiaria, a solução implementada deve responder como saída "0", indicando que trata-se do cultivo principal.
2. Ao fornecer qualquer linha de dados provenientes dos arquivos de ervas daninhas (Amargoso, Caruru, Juazeiro, Leiteiro) a solução implementada deve responder com saída "1" indicando que trata-se de uma erva daninha invasora do cultivo principal.
3. Ao fornecer qualquer linha de dados provenientes dos arquivos de ervas daninhas (Amargoso, Caruru, Juazeiro, Leiteiro) a solução implementada deve identificar e classificar a saída em uma das 4 ervas daninhas invasoras: "A" para Amargoso, "C" para Caruru, "J" para Juazeiro, "L" para Leiteiro.

# Orientações

O desenvolvimento do trabalho pode ser centralizado em um "Jupyter Notebook", que deve ser armazenado em um fork desse repositório atual.

Segue uma proposta de ordem/metodologia que pode ser seguida para guiar o desenvolvimento do trabalho, não é mandatório seguir a ordem/metodologia proposta.

1. Seleção de Algoritmo/Técnica de IA
2. Critérios de Seleção de Dados Treinamento
3. Critérios de Seleção de Dados para Validação
4. Critérios de Análise Prática dos Resultados
5. Desenvolvimento
6. Problemas enfrentados
7. Técnicas utilizadas para enfrentar e resolver os problemas enfrentados
8. Solução Desenvolvida - Implementação
9. Conclusões e Resultado Prático - Gráficos, Métricas, Desempenho

---