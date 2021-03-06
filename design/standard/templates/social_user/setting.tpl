<form name="Setting" method="post" action={concat( 'social_user/setting/', $userID )|ezurl}>
    <section class="hgroup">
        <h1>{$user.contentobject.name|wash()}</h1>
    </section>

    <ul class="list-unstyled">
        <li><strong>{"Username"|i18n( 'social_user/setting' )}:</strong> {$user.login|wash()}</li>
        <li><strong>{"Email"|i18n( 'social_user/setting' )}:</strong> {$user.email|wash()}</li>
    </ul>

    <div class="checkbox">
        <label class="check">{"Blocca utente"|i18n( 'social_user/setting' )}
            <input type="checkbox" name="is_enabled" {if $social_user.has_block_mode}checked="checked"{/if} />
        </label>
    </div>

    <div class="checkbox">
        <label class="check">{"Impedisci all'utente di commentare"|i18n( 'social_user/setting' )}
            <input type="checkbox" name="sensor_deny_comment" {if $social_user.has_deny_comment_mode}checked="checked"{/if} />
        </label>
    </div>

    <div class="checkbox">
        <label class="check">{"Modera sempre le attività dell'utente"|i18n( 'social_user/setting' )}
            <input type="checkbox" name="moderate" {if $social_user.has_moderation_mode}checked="checked"{/if} />
        </label>
    </div>

    <div class="checkbox">
        <label class="check">{"Permetti all'utente di inserire segnalazioni per conto di altri"|i18n( 'social_user/setting' )}
            <input type="checkbox" name="sensor_can_behalf_of" {if $social_user.has_can_behalf_of_mode}checked="checked"{/if} />
        </label>
    </div>

    <input class="btn btn-primary" type="submit" name="UpdateSettingButton" value="{'Salva'|i18n( 'social_user/setting' )}" />
    <input class="btn bt-default" type="submit" name="CancelSettingButton" value="{'Annulla'|i18n( 'social_user/setting' )}" />

</form>