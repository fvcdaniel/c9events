{"filter":false,"title":"app.rb","tooltip":"/app.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":37,"column":4},"end":{"row":39,"column":4},"action":"insert","lines":["","    if eventExist(params[:id])","    "],"id":2},{"start":{"row":41,"column":3},"end":{"row":43,"column":7},"action":"insert","lines":[" else","        halt 404, \"Not found\\n\"","    end"]},{"start":{"row":137,"column":20},"end":{"row":137,"column":40},"action":"insert","lines":["#mailToCoord(create)"]},{"start":{"row":156,"column":12},"end":{"row":156,"column":32},"action":"insert","lines":["#mailToCoord(create)"]},{"start":{"row":188,"column":0},"end":{"row":189,"column":0},"action":"remove","lines":["    ",""]},{"start":{"row":197,"column":8},"end":{"row":198,"column":12},"action":"insert","lines":["if servicoExist(params[:id])","            "]},{"start":{"row":199,"column":8},"end":{"row":200,"column":4},"action":"remove","lines":["","    "]},{"start":{"row":199,"column":47},"end":{"row":202,"column":11},"action":"insert","lines":["","        else","            halt 404, \"Not found\\n\"","        end"]},{"start":{"row":278,"column":4},"end":{"row":279,"column":8},"action":"insert","lines":["if usuarioExist(params[:id])","        "]},{"start":{"row":280,"column":0},"end":{"row":280,"column":4},"action":"insert","lines":["    "]},{"start":{"row":281,"column":0},"end":{"row":281,"column":2},"action":"insert","lines":["  "]},{"start":{"row":281,"column":10},"end":{"row":281,"column":12},"action":"insert","lines":["  "]},{"start":{"row":282,"column":8},"end":{"row":282,"column":12},"action":"insert","lines":["    "]},{"start":{"row":283,"column":4},"end":{"row":283,"column":8},"action":"insert","lines":["    "]},{"start":{"row":284,"column":0},"end":{"row":284,"column":4},"action":"insert","lines":["    "]},{"start":{"row":285,"column":8},"end":{"row":285,"column":12},"action":"insert","lines":["    "]},{"start":{"row":286,"column":4},"end":{"row":286,"column":8},"action":"insert","lines":["    "]},{"start":{"row":286,"column":12},"end":{"row":289,"column":7},"action":"insert","lines":["","    else","        halt 404, \"Not found\\n\"","    end"]},{"start":{"row":347,"column":4},"end":{"row":347,"column":42},"action":"remove","lines":["#  if valida_admin(params[:usuarioid])"]},{"start":{"row":350,"column":4},"end":{"row":353,"column":12},"action":"remove","lines":["# else","    #     status 403","    #     json \"Usuario sem acesso suficiente.\"","    # end   "]},{"start":{"row":357,"column":8},"end":{"row":358,"column":12},"action":"insert","lines":["if lugarExist(params[:id])","            "]},{"start":{"row":359,"column":8},"end":{"row":359,"column":12},"action":"insert","lines":["    "]},{"start":{"row":359,"column":25},"end":{"row":362,"column":11},"action":"insert","lines":["","        else","            halt 404, \"Not found\\n\"","        end"]},{"start":{"row":442,"column":8},"end":{"row":443,"column":12},"action":"insert","lines":["if coordExist(params[:id])","            "]},{"start":{"row":444,"column":8},"end":{"row":444,"column":12},"action":"insert","lines":["    "]},{"start":{"row":444,"column":25},"end":{"row":447,"column":11},"action":"insert","lines":["","        else","            halt 404, \"Not found\\n\"","        end"]},{"start":{"row":550,"column":9},"end":{"row":550,"column":28},"action":"insert","lines":[" return {:erro =>  "]},{"start":{"row":550,"column":29},"end":{"row":550,"column":37},"action":"insert","lines":["Usuario "]},{"start":{"row":550,"column":38},"end":{"row":550,"column":49},"action":"insert","lines":[" senha inco"]},{"start":{"row":550,"column":51},"end":{"row":550,"column":53},"action":"insert","lines":["et"]},{"start":{"row":550,"column":54},"end":{"row":550,"column":56},"action":"insert","lines":["s!"]},{"start":{"row":550,"column":57},"end":{"row":551,"column":0},"action":"insert","lines":["}.to_json",""]}]]},"ace":{"folds":[],"scrolltop":7839,"scrollleft":0,"selection":{"start":{"row":555,"column":3},"end":{"row":555,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":434,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1486420132233,"hash":"eef425dba613496f591f29c7526b817f1e2c977d"}