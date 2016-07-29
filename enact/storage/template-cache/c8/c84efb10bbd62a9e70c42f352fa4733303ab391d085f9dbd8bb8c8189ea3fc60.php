<?php

/* _layout.html */
class __TwigTemplate_9de0918c1d8d9078446f12a56a5b58ec3d73d1a36173ae8fad20784e1329beef extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!doctype html>
<html lang='";
        // line 2
        echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "lang", array());
        echo "'>
    <head>
        <meta charset='";
        // line 4
        echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "charset", array());
        echo "' />
        <meta content='noindex,nofollow' name='robots'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0' />

        ";
        // line 8
        if ($this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "favIcon", array())) {
            // line 9
            echo "            <link type='image/x-icon' href='";
            echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "favIcon", array());
            echo "' rel='shortcut icon'>
        ";
        }
        // line 11
        echo "
        ";
        // line 12
        if ($this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "desc", array())) {
            // line 13
            echo "            <meta name=\"description\" content=\"";
            echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "desc", array());
            echo "\"/>
        ";
        }
        // line 15
        echo "
        ";
        // line 16
        echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "styleSrc", array(0 => enact_cpSlug("resource/css/foundation.min.css")), "method");
        echo "
        ";
        // line 17
        echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "styleSrc", array(0 => "/css/css.css"), "method");
        echo "

        <title>";
        // line 19
        echo $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "title", array());
        echo "</title>

    </head>
    <body> 

        <header class='row'>
            <div class='logo'>
                <a href='/'>";
        // line 26
        echo $this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "siteLogo", array());
        echo "</a>
            </div>

            <div class='menu'>
                ";
        // line 30
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "globals", array()), "siteMenu", array()), "matrixFieldHandle", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 31
            echo "                    ";
            if ($this->getAttribute($this->getAttribute($this->getAttribute($context["item"], "itemLink", array()), "entryFieldHandle", array()), 0, array(), "array")) {
                // line 32
                echo "                        ";
                $context["link"] = $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($context["item"], "itemLink", array()), "entryFieldHandle", array()), 0, array(), "array"), "url", array());
                // line 33
                echo "                    ";
            } else {
                // line 34
                echo "                        ";
                $context["link"] = $this->getAttribute($context["item"], "textLink", array());
                // line 35
                echo "                    ";
            }
            // line 36
            echo "                    <a href='";
            echo (isset($context["link"]) ? $context["link"] : null);
            echo "'>";
            echo $this->getAttribute($context["item"], "itemTitle", array());
            echo "</a>
                ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 38
        echo "            </div>

        </header>

        ";
        // line 42
        $this->displayBlock('content', $context, $blocks);
        // line 44
        echo "
        ";
        // line 45
        if ($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "backgroundImage", array())) {
            // line 46
            echo "            <div class='full-bg-img'>";
            echo $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "backgroundImage", array()), "assetFieldHandle", array()), 0, array(), "array"), "getImgHtml", array());
            echo "</div>
        ";
        }
        // line 48
        echo "
    </body>
</html>
";
    }

    // line 42
    public function block_content($context, array $blocks = array())
    {
        // line 43
        echo "        ";
    }

    public function getTemplateName()
    {
        return "_layout.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  142 => 43,  139 => 42,  132 => 48,  126 => 46,  124 => 45,  121 => 44,  119 => 42,  113 => 38,  102 => 36,  99 => 35,  96 => 34,  93 => 33,  90 => 32,  87 => 31,  83 => 30,  76 => 26,  66 => 19,  61 => 17,  57 => 16,  54 => 15,  48 => 13,  46 => 12,  43 => 11,  37 => 9,  35 => 8,  28 => 4,  23 => 2,  20 => 1,);
    }
}
/* <!doctype html>*/
/* <html lang='{{ enact.view.lang }}'>*/
/*     <head>*/
/*         <meta charset='{{ enact.view.charset }}' />*/
/*         <meta content='noindex,nofollow' name='robots'>*/
/*         <meta name='viewport' content='width=device-width, initial-scale=1.0' />*/
/* */
/*         {% if enact.view.favIcon %}*/
/*             <link type='image/x-icon' href='{{ enact.view.favIcon }}' rel='shortcut icon'>*/
/*         {% endif %}*/
/* */
/*         {% if enact.view.desc %}*/
/*             <meta name="description" content="{{ enact.view.desc }}"/>*/
/*         {% endif %}*/
/* */
/*         {{ enact.view.styleSrc( cpSlug('resource/css/foundation.min.css') ) }}*/
/*         {{ enact.view.styleSrc('/css/css.css') }}*/
/* */
/*         <title>{{ enact.view.title }}</title>*/
/* */
/*     </head>*/
/*     <body> */
/* */
/*         <header class='row'>*/
/*             <div class='logo'>*/
/*                 <a href='/'>{{ enact.siteLogo }}</a>*/
/*             </div>*/
/* */
/*             <div class='menu'>*/
/*                 {% for item in enact.globals.siteMenu.matrixFieldHandle %}*/
/*                     {% if item.itemLink.entryFieldHandle[0] %}*/
/*                         {% set link = item.itemLink.entryFieldHandle[0].url %}*/
/*                     {% else %}*/
/*                         {% set link = item.textLink  %}*/
/*                     {% endif %}*/
/*                     <a href='{{ link }}'>{{ item.itemTitle }}</a>*/
/*                 {% endfor %}*/
/*             </div>*/
/* */
/*         </header>*/
/* */
/*         {% block content %}*/
/*         {% endblock %}*/
/* */
/*         {% if entry.backgroundImage %}*/
/*             <div class='full-bg-img'>{{ entry.backgroundImage.assetFieldHandle[0].getImgHtml }}</div>*/
/*         {% endif %}*/
/* */
/*     </body>*/
/* </html>*/
/* */
