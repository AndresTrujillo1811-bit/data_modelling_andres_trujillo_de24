import graphviz

# Skapa en ER-diagram
er = graphviz.Digraph('ERDiagram', format='png')

# Entiteter
er.node('Student', 'Student\n(StudentID, Namn, Personnummer, Email)')
er.node('Klass', 'Klass\n(KlassID, ProgramID, Startår)')
er.node('Program', 'Program\n(ProgramID, Namn, Beskrivning)')
er.node('Kurs', 'Kurs\n(KursID, Namn, Kurskod, Poäng, Beskrivning)')
er.node('Utbildare', 'Utbildare\n(UtbildareID, Namn, Email, Roll)')
er.node('Konsult', 'Konsult\n(KonsultID, Företagsnamn, OrgNr, F-skatt, Adress, Timarvode)')
er.node('Utbildningsledare', 'Utbildningsledare\n(LedareID, Namn, Email)')
er.node('Ort', 'Ort\n(OrtID, Stad)')

# Relationer
er.edge('Student', 'Klass', label='går i')
er.edge('Klass', 'Program', label='tillhör')
er.edge('Program', 'Kurs', label='består av')
er.edge('Utbildare', 'Kurs', label='undervisar')
er.edge('Utbildningsledare', 'Klass', label='ansvarar för')
er.edge('Utbildare', 'Konsult', label='kan vara')
er.edge('Ort', 'Program', label='finns i')

# Spara och rendera diagrammet
er_path = "/mnt/data/er_diagram.png"
er.render(er_path, format="png", cleanup=True)
er_path