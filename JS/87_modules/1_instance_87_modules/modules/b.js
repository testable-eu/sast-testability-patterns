
module.exports = {
    assign: function (val){
        this.b_in_modules = val;
    },

    get: function(){
        return this.b_in_modules;
    }
};
