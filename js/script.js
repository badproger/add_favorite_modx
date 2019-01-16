(function () {
    let add_favorite_plugin = {
        element: '[data-action=add-favorite]',
        controller: 'demo-page.html',
        action:{
          add: 'add',
          delete: 'delete'
        },
        form: '.form',
        input: '[name=id]',
        messages: {
            default: 'Добавить в избранное',
            active: 'Удалить из избранного'
        },
        activeClass: 'button--add-favorite--active',
        init: function () {
            let button = $(this.element),
                activeClass = this.activeClass,
                form = this.form,
                input = this.input,
                action = add_favorite_plugin.action,
                send = {};
            button.bind('click', function () {
                let self = $(this),
                    parent = self.parents(form),
                    id = parent.find(input).val();
                    send.resource = id;
                    action.id = id;
                    self.toggleClass(activeClass);
                if(self.hasClass(activeClass)){
                    self.text(add_favorite_plugin.messages.active);
                    send.event = action.add;
                }else{
                    self.text(add_favorite_plugin.messages.default);
                    send.event = action.delete;
                }
                add_favorite_plugin.ajax(send);
            });
        },
        ajax: function (action) {
            $.post(this.controller, action)
        }
    };
    add_favorite_plugin.init();

})();