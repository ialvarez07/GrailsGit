<!DOCTYPE html>
<html>

<g:each var="sitio" in="${lista}">

    <div id="Lista"></div>
        <tr class="${(sitio.active=="true") ? 'highlightRed' : 'highlightGreen'}">
            <td>${sitio.name}</td>
            %{--<td>
                <button class="btn btn-primary" onclick="modal('${agencia.idAgencia}')" type="button">
                    Detalle
                </button>
            </td>--}%
        </tr>

</g:each>

</body>
</html>