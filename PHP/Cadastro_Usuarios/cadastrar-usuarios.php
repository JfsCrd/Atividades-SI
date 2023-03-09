<?

    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $cpf = filter_input(INPUT_POST, "txtCpf", FILTER_SANITIZE_STRING);
        $senha = filter_input(INPUT_POST, "txtSenha", FILTER_SANITIZE_STRING);

        if(!empty($cpf) && !empty($senha)){
            $conexao = mysqli_connect("localhost", "root", "123123", "meusite", 3306);

            if($conexao){
                $query = "SELECT cpf, senha FROM usuarios WHERE cpf = '$cpf' and senha = '$senha'";

                $select = mysqli_query($conexao, $query);

                echo(mysqli_num_rows($select));

                if($select){
                    "<script language ='javascript' type='text/javascript'> alert('Sucesso! Logado.'); window.location.href='index.php' </script>";
                    echo 'oi';
                }
                /* else {
                  echo "<script language ='javasscript' type='text/javascript'> alert('Erro! Usuário não cadastrado.'); window.location.href='index.php' </script>";
                } */
            }
            echo "<script language ='javascript' type='text/javascript'> alert('Erro! Não foi possível conectar o banco de dados.'); window.location.href='index.php' </script>";
        }
        else{
            echo "<script language ='javascript' type='text/javascript'> alert('Erro! Existem campos vazios.'); window.location.href='index.php' </script>";
        }
    }

?>