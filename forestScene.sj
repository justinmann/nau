forestBuyElement = heap fillLayout(
    margin : margin(10, 100, 10, 10)
    effect : valid(heap fadeEffect(0.0f) as #effect)
    children : [
        heap borderLayout(
            children : [
                heap borderChild(
                    position : borderPosition.bottom
                    child : heap buttonElement(
                        text : "Buy me!"
                    ) as #element
                ) as #element
                heap borderChild(
                    position : borderPosition.right
                    child : heap fillLayout(
                        children : [
                            heap textElement(
                                idealSize : valid(size(250, 100))
                                text : "Product description"
                                color : colors.black
                            ) as #element
                        ]
                    ) as #element
                ) as #element
            ]
        ) as #element
    ]
)

forestScene = heap nauScene3dElement(
    lookAtMin := vec3(-16.0f, -1.0f, 0.0f)
    lookAtMax := vec3(16.0f, 1.0f, 6.0f)
    children: [
        heap model(
            texture : texture_fromPng("assets/images/forest_backdrop.png")
            shader : phongTextureShader
            model : mat4_translate(vec3(0.0f, 8.0f, 20.0f)) * mat4_scale(12.0f, 12.0f, 12.0f)
            vertexBuffer : planeVertexBuffer(x0 : -6.3f, y0 : -1.0f, x1 : 6.3f, y1 : 1.0f) 
        ) as #model

        heap leafPanel(
            textures : [
                texture_fromPng("assets/images/leaf11.png")
                texture_fromPng("assets/images/leaf12.png")
                texture_fromPng("assets/images/leaf13.png")
                texture_fromPng("assets/images/leaf11.png")
                texture_fromPng("assets/images/leaf11.png")
                texture_fromPng("assets/images/leaf12.png")
                texture_fromPng("assets/images/leaf13.png")
            ]
        ) as #model

        heap peoplePanel(
            model : mat4_translate(vec3(0.0f, -1.3f, 0.0f))
            children : [
                heap scene2dModel(
                    id : valid("forest_person1")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person1")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson1.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person2")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person2")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson2.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person3")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person3")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson3.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person4")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person4")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson4.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person5")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person5")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson5.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person6")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person6")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson6.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person7")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person7")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson7.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model

                heap scene2dModel(
                    id : valid("forest_person8")
                    vertexBuffer : planeVertexBuffer()  
                    shader : phongTextureShader
                    hasAlpha : true
                    children : [
                        heap personElement(
                            id : valid("forest_person8")
                        ) as #element
                        heap imageElement(
                            image : image(texture : texture_fromPng("assets/images/forestperson8.png"))
                            stretch : imageStretch.aspectRatio
                        ) as #element
                    ]
                ) as #model
            ]
        ) as #model

        heap model(
            texture : texture_fromPng("assets/images/floor.png")
            shader : phongTextureShader
            model : mat4_translate(vec3(0.0f, -2.3f, 0.0f)) *  mat4_scale(40.0f, 40.0f, 40.0f) * mat4_rotate(90.0f, vec3(1.0f, 0.0f, 0.0f))
            vertexBuffer : planeVertexBuffer() 
        ) as #model

        heap panel3d(
            model : mat4_translate(vec3(0.0f, -1.3f, 0.0f))
            children : [
                heap model(
                    texture : texture_fromPng("assets/images/tree1.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(0.0f, 0.0f, 0.6f))
                    vertexBuffer : planeVertexBuffer(y1 : 6.0f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree3.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-2.0f, 0.0f, 2.3f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.34f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree4.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-8.0f, 0.0f, 3.4f))
                    vertexBuffer : planeVertexBuffer(y1 : 9.18f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree3.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(9.0f, 0.0f, 2.3f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.34f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree2.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-6.0f, 0.0f, 5.1f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.0f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree3.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-7.5f, 0.0f, 6.3f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.34f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree4.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(0.0f, 0.0f, 7.4f))
                    vertexBuffer : planeVertexBuffer(y1 : 9.18f) 
                    hasAlpha : true
                ) as #model

                heap model(
                    texture : texture_fromPng("assets/images/tree2.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-7.5f, 0.0f, 5.1f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.0f) 
                    hasAlpha : true
                ) as #model
                
                heap model(
                    texture : texture_fromPng("assets/images/tree2.png")
                    shader : phongTextureShader
                    model : mat4_translate(vec3(-10.5f, 0.0f, 5.6f))
                    vertexBuffer : planeVertexBuffer(y1 : 7.0f) 
                    hasAlpha : true
                ) as #model
            ]
        ) as #model
    ]
)

forestElement = heap fillLayout(
    children : [
        forestScene as #element
        forestBuyElement as #element
        heap flowLayout(
            children : [
                heap buttonElement(
                    text : "back"
                    onClick : forestController.onBack
                ) as #element
            ]
        ) as #element
    ]
) as #element

forestTexture : texture_fromElement(forestElement, size(800, 352))