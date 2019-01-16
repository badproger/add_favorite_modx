<div class="product">
    <form action="" method="post" class="ms2_form form">
        <input type="hidden" name="id" value="{$id}">
        <div class="product__image">
            {if $image?}
                <img src="{$image}" alt="{$pagetitle}" title="{$pagetitle}"/>
            {else}
                <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                     srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                     alt="{$pagetitle}" title="{$pagetitle}"/>
            {/if}
        </div>
        <p class="product__name">{$pagetitle}</p>
        <p class="product__price">Цена <strong>{$price} р.</strong></p>
        <div class="product__footer">
            {if $id | in : $.session['favorites']}
                <button type="button" class="button button--add-favorite button button--add-favorite--active" data-action="add-favorite">Удалить из избранного</button>
                {else}
                <button type="button" class="button button--add-favorite " data-action="add-favorite">Добавить в избранное</button>
            {/if}

            <button class="button button--submit">Заказать</button>
        </div>
    </form>
</div>