<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
    <h1>Novo cadastro </h1>

    <form method="POST" action="cadastrar-usuarios.php">
        <span>CPF </span>
        <input type="text" name="nomeCpf" maxlength="100"/> <br/> <br/>
        <span>Senha </span>
        <input type="password" name="txtSenha" maxlength="32" /> <br/> <br/>

        <input type="submit" value="Logar"/>

    </form>

</body>
</html>