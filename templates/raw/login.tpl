<!DOCTYPE html>
<html lang="en">
<head>

<title>stream.cx - Next Generation Streaming | Main</title>

{include file="$frameMeta"}

{include file="$frameInclCSS"}

{include file="$frameInclJS"}

</head>

<body>

<div class="account-container login">

    <div class="content clearfix">

        <form action="./" method="post">

            <h1>Anmelden</h1>

            <div class="login-fields">

                <p>Melden Sie sich jetzt mit Ihren Zugangsdaten an:</p>

                <div class="field">
                    <label for="username">Benutzername:</label>
                    <input type="text" id="username" name="username" value="" placeholder="Benutzername" class="login username-field" autocomplete="off" />
                </div>

                <div class="field">
                    <label for="password">Passwort:</label>
                    <input type="password" id="password" name="password" value="" placeholder="Passwort" class="login password-field" autocomplete="off"/>
                </div>

            </div>

            <div class="login-actions">

				<span class="login-checkbox">
					<input id="Field" name="Field" type="checkbox" class="field login-checkbox" value="First Choice" tabindex="4" />
					<label class="choice" for="Field">Angemeldet bleiben</label>
				</span>

                <button class="button btn btn-secondary btn-large">Anmelden</button>

            </div>

        </form>

    </div>

</div>

<div class="login-extra">
    <a href="#">Passwort vergessen?</a>
</div>

</body>
</html>