﻿
Ext.define('App.app.store.User', {
    extend: 'Ext.data.Store',
    alias: 'store.userlist',
    storeId: 'userlist',

    model: 'App.app.model.User',

    proxy: {
        type: 'ajax',
        url: '/api/User/List',
        reader: {
            type: 'json',
            totalProperty: 'Total',
            rootProperty: 'Items'
        },
        startParam: 'firstResult',
        limitParam: 'maxResults'
    },

    autoSync: true,
    autoLoad: true
});