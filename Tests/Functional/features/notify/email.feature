# language: fr

@feature/email
Fonctionnalité: Envoyer des emails

Scénario: Envoyer un email
    Quand j'envoie un mail a "test@test.test" avec "sender@send.er" avec le titre "title" et le template contenu dans le fichier "simple_template" et les tokens contenus dans "simple_tokens.json"
    Alors il ne devrait pas y'avoir eu une erreur
    Et    il doit y avoir un message dans la file "email" avec le corps contenu dans "simple_email_job.json"

Plan du Scénario: Envoyer un email sans donner d'adresse
    Quand j'envoie un mail a "<sender>" avec "<reciever>" avec le titre "title" et le template contenu dans le fichier "simple_template" et les tokens contenus dans "simple_tokens.json"
    Alors il devrait y'avoir eu une erreur
    Et    le message d'erreur devrait être "No email provided" et le code 400

    Exemples:
        | sender         | reciever       |
        | test@test.test |                |
        |                | sender@send.er |
        |                |                |
