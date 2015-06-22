<div class="signin">
    <div class="social_sign">

        {*
		<h3>{'Accedi con il tuo account social'|i18n('social_user/signin')}</h3>

        {if $login_methods|count}
            {foreach $login_methods as $l}
                {if or( $is_user_anonymous, and( $is_user_anonymous|not, fetch( ngconnect, user_has_connection, hash( user_id, $user.contentobject_id, login_method, $l ) )|not ) )}
                    {switch match=$l}
                    {case match='facebook'}
                    {set $icon = "fa fa-facebook" $class = "fb"}
                    {/case}
                    {case match='twitter'}
                    {set $icon = "fa fa-twitter" $class = "tw"}
                    {/case}
                    {case match='google'}
                    {set $icon = "fa fa-google-plus" $class = "gp"}
                    {/case}
                    {case}{/case}
                    {/switch}
                    {if $icon}
                        {set $method_name = ezini( concat( 'LoginMethod_', $l ), 'MethodName', 'ngconnect.ini' )}
                        {if $login_window_type|eq( 'popup' )}
                            <a class="{$class}" href="#" onclick="window.open( '{concat( 'layout/set/ngconnect/ngconnect/login/', $l, '?redirectURI=', cond( and( is_set( $module_result.node_id ), is_set( $module_result.content_info.url_alias ) ), $module_result.content_info.url_alias, '' )|urlencode )|ezurl( no, full )}', '', 'resizable=1,scrollbars=1,width=800,height=420' );return false;">
                                <i class="{$icon}"></i>
                            </a>
                        {else}
                            <a class="{$class}" href={concat( 'ngconnect/login/', $l, '?redirectURI=', cond( and( is_set( $module_result.node_id ), is_set( $module_result.content_info.url_alias ) ), $module_result.content_info.url_alias, true(), '' )|urlencode )|ezurl}>
                                <i class="{$icon}"></i>
                            </a>
                        {/if}
                    {/if}
                    {set $icon = false()}
                {/if}
            {/foreach}
        {/if}
    </div>
    <div class="or">
        <div class="or_l"></div>
        <span>{'oppure'|i18n('social_user/signin')}</span>
        <div class="or_r"></div>
    </div>
    <p class="sign_title">{'Accedi con il tuo account'|i18n('social_user/signin')}</p>
	*}
	
	<h3>
	  {'Sei già iscritto?'|i18n('social_user/signin')}<br />
	  <strong>{'Accedi subito!'|i18n('social_user/signin')}</strong>
	</h3>
	</div>
	<hr />
    <div class="row">
        <div class="col-lg-2"></div>
        <div class="form col-lg-8">
            <form name="loginform" method="post" action={'/user/login/'|ezurl}>
                <input autocomplete="off" placeholder="{'Indirizzo Email'|i18n('social_user/signin')}" class="form-control" type="text" name="Login">
                <input autocomplete="off" placeholder="{'Password'|i18n('social_user/signin')}" class="form-control" type="password" name="Password">
                <button name="LoginButton" type="submit" class="btn btn-primary btn-lg">{'Accedi'|i18n('social_user/signin')}</button>
				<hr />
				<div class="forgot">
                    {*
					<div class="checkbox">
                        <label class="">
                            <input type="checkbox" name="Cookie"> {'Resta collegato'|i18n('social_user/signin')}
                        </label>
                    </div>
					*}					
                    <a href={'/user/forgotpassword'|ezurl}>{'Hai dimenticato la password?'|i18n('social_user/signin')}</a>
                </div>
                <input type="hidden" name="RedirectURI" value="/" />
            </form>
        </div>
        <div class="col-lg-2"></div>
    </div>
</div>