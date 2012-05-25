	<div class="side-bar">
	<div class="social-block">
    	{if $smarty.session.USERID eq ""}
        <li id="side-bar-signup">
        	<a class="spcl-button green" href="{$baseurl}/signup" label="Header">{$lang148}</a>
        </li>
         <div class="spcl-button-wrap">
            	<a class="spcl-button facebook badge-facebook-connect" label="LoginFormFacebookButton" next="" href="https://www.facebook.com/dialog/permissions.request?app_id={$FACEBOOK_APP_ID}&display=page&next={$baseurl}/&response_type=code&fbconnect=1&perms=email,user_birthday,user_about_me">{$lang14}</a>
            </div>

        
        {/if}
      
       {if $smarty.session.USERID ne ""}
        
        	<h3>Welcome Back, <a href="{$baseurl}/user/{$smarty.session.USERNAME|stripslashes} " class="profile-button">{$smarty.session.USERNAME|stripslashes}</a></h3>
				<div class="image-wrap">
			{insert name=get_member_profilepicture assign=profilepicture value=var USERID=$smarty.session.USERID}
                        	<img id="uploaded_img" width="140px" src="{$membersprofilepicurl}/thumbs/{$profilepicture}?{$smarty.now}" alt="avatar" />
			</div>
                
                         
                     
                 <div id="main-filter with-topping">  
                    
                <li><a href="{$baseurl}/user/{$smarty.session.USERNAME|stripslashes}"><strong>{$lang192}</strong> </a></li>
                <li><a  href="{$baseurl}/user/{$smarty.session.USERNAME|stripslashes}/likes"><strong>{$lang193}</strong></a></li>            
                <li><a href="{$baseurl}/user/{$smarty.session.USERNAME|stripslashes}/messages"><strong>{$lang194}</strong> (<fb:comments-count href="{$baseurl}/user/{$smarty.session.USERNAME|stripslashes}/messages"></fb:comments-count>)</a></li>
              </ul>
              </div>
                <div class="twitter-follow">
                <a href="{$baseurl}/settings">{$lang45}|</a>
            	<a href="javascript:loadContent('#loadme', '{$baseurl}/log_out');">{$lang198}</a>
            </div>  
                    {/if}
   
        </div>
        {section name=i loop=$f} 
        <div class="s-300">
        	{insert name=get_advertisement AID=9}
        </div>
        
        <div class="social-block">
            <h3>{$lang153} {$site_name}</h3>
            <div class="facebook-like">
                <iframe src="//www.facebook.com/plugins/like.php?href={$baseurl|urlencode}%2F&amp;send=false&amp;layout=standard&amp;width=270&amp;show_faces=true&amp;action=like&amp;colorscheme=light&amp;font&amp;height=80" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:270px; height:80px;" allowTransparency="true"></iframe>
            </div>
            <div class="twitter-follow">
            	<a href="http://twitter.com/{$twitter}" class="twitter-follow-button">{$lang149} @{$twitter}</a>
            </div>            
            <div class="google-plus">
            	<p>{$lang150}</p>
            	<g:plusone size="medium" href="{$baseurl}"></g:plusone>
            </div>
        </div>
        
        
        
       
       
            <div class="section-2" style="width:300px; //padding-left: 5px; position:top; ">   
                    {section name=i loop=$r}   
                     <h3>{$lang257}</h3>               
                        <div style="padding-bottom: 1px; border-bottom: 1px solid #eee;margin-top:-5px;">
                                <a href="{$baseurl}/gag/{$r[i].PID}" style=" " class=" ">
                                    <div align="left" style="border: 1px solid #bbb; width: 80px; height: 50px; overflow: hidden; background-position:center; position:absolute;" class=" ">
                                        {if $r[i].nsfw eq "1" AND $smarty.session.FILTER ne "0"}<img width="80" src="{$baseurl}/images/nsfw_thumb.jpg" alt="{$r[i].story|stripslashes}" />{else}<img style=" " width="80" src="{$purl}/t/s-{$r[i].pic}" alt="{$r[i].story|stripslashes}" />{/if}
                                    </div>
                                </a>
                                <a href="{$baseurl}/gag/{$r[i].PID}" class=" "><p style="padding-left: 125px; font-weight: bold; font-size: 13px;">{$r[i].story|stripslashes|mb_truncate:30:"...":'UTF-8'}</p></a><br /><p style="padding-left: 125px; font-weight: normal; font-size: 11px;"></p>
<p style="padding-left: 125px; font-weight: normal; color: #999; font-size: 11px;">
<span class="comment" style="color:#888;display:inline-block;padding-left:16px;margin:0 0 0 0px; padding-bottom:2px;background:url(../images/sprite_v12.png) no-repeat -11px -77px"><fb:comments-count href="{$baseurl}/gag/{$p.PID}"></fb:comments-count></span>
{insert name=get_fav_count value=var assign=fcount PID=$p.PID}
<span class="comment" style="color:#888; display:inline-block;padding-left:16px;margin:0 0 0 5px; padding-bottom:2px; background:url(../images/sprite_v12.png) no-repeat -11px -61px"><span id="love_count" votes="{$fcount}" >{$fcount}</span></span>
</p>
                         </div>
                    {/section}
            </div>
           
        <div id="moving-boxes">
 
            {/section}       
            <div class="msg-box">
            	<h3>{$lang151}</h3>
            	<p>{$lang152}</p>
            </div> 
            <div class="section-2" style="width:250px">
                <div class="wrap" style="width:250px">
                    <ul class="sideinfo side-items-left" style="font-weight:bold; font-size:11px;margin-bottom:10px;padding-left:5px">
                        <li>&copy; 2012 {$site_name|stripslashes}· <a class="badge-language-selector" href="javascript:void(0);" style="color:#00a5ef">{if $smarty.session.language eq "en"}english{elseif $smarty.session.language eq "fr"}fran&#xE7;ais{elseif $smarty.session.language eq "de"}deutsch{elseif $smarty.session.language eq "es"}espa&ntilde;ol{elseif $smarty.session.language eq "pt"}portugu&#234;s{elseif $smarty.session.language eq "ru"}pусский{elseif $smarty.session.language eq "tr"}t&uuml;rk&ccedil;e{/if}</a></li>
                    </ul>
                    <ul class="sideinfo side-items-left" style="overflow:visible; width:400px">
                        <li><a href="{$baseurl}/about">{$lang67}</a></li>
                        <li>·<a href="{$baseurl}/rules">{$lang135}</a></li>
                        <li>·<a href="{$baseurl}/faq">{$lang202}</a></li>
                        <li>·<a href="{$baseurl}/terms_of_service">{$lang203}</a></li>
                        <li>·<a href="{$baseurl}/privacy_policy">{$lang204}</a></li>
                        <li>·<a href="{$baseurl}/contact">{$lang205}</a></li>
                    </ul>
                    <div style="clear:both"></div>
                    <div style="padding-left:7px; padding-top:10px;">
                    <b>Powered by itbloggeren.co.cc</b>
                    <a href="http://toppblogg.no/"><img src="http://toppblogg.no/button.php?u=blizzerdz" border="0" alt="ToppBlogg - toppliste for bloggere" /></a>
                    </div>
                </div>
            </div>
        </div>
    </div>