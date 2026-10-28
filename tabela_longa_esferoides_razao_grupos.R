# Precisa que o script Fluorescencia_453_biologicas seja rodado
# Para fazer a subtraçao entre os grupos. Depois você volta para o formato longo..


wide.esferoides <- esferoides %>% 
  group_by(Grupo) %>% 
  mutate(
    id = row_number()
  ) %>% 
  pivot_wider(
    id_cols = id,
    names_from = Grupo,
    values_from = Fluorescencia
  )

wide.esferoides <- wide.esferoides %>% 
  mutate(
    razao.dupla = DUPLA / CT_DMSO
  ) # E AI VOCE CONTINUA.... DEPOIS, TRASFORMA PARA LONG, UTILIZANDO PIVOT_LONG
