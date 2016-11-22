<!DOCTYPE html>
<%@page import="jdbc.Aluno"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Aluno</title>
</head>
<body>
  <h1>Cadastro de Aluno</h1>
  <form name="cadastroAlunoJdbc" method="post">
  Matricula: <input type="text" name="matricula"><br>
  Nome: <input type="text" name="nome"><br>
  Senha: <input type="text" name="senha"><br>
  <br>
  <input type="submit" name="op" value="Salvar">
  <input type="submit" name="op" value="Excluir">
  <br>
  <br>
  <table border="1">
    <tr>
      <td>Matricula</td>
      <td>Nome</td>
      <td>#</td>
    </tr>
    <%
    List<Aluno> aluno = (List<Aluno>) request.getAttribute("alunos");
    for (Aluno a:aluno) {
    %>
      <tr>
        <td><%=a.getMatricula()%></td>
        <td><%=a.getNome()%></td>
        <td><a href="cadastroAlunoJdbc?op=Excluir&codigo=<%=a.getMatricula()%>">Excluir</a></td>
      </tr>
    <%
    }
    %>
  </table>
</body>
</html>