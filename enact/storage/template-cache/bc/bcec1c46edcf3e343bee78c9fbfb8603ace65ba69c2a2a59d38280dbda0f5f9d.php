<?php

/* bar.html */
class __TwigTemplate_bc60b40b39d943a26fe8aba73740b4e5f13f03a60fd0aec08e5f6f46135aa1ca extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("_layout.html", "bar.html", 1);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "_layout.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "    <div class='row content'>
        <h1 class='title'>";
        // line 5
        echo $this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "boatingTitle", array());
        echo "</h1>
        ";
        // line 6
        echo $this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "content", array());
        echo "

        <hr>

        <div class='bar-menu'>

        ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "menuItems", array()), "matrixFieldHandle", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 13
            echo "
            ";
            // line 14
            if (($context["item"] == "menuCategory")) {
                // line 15
                echo "
                <div class='category'>";
                // line 16
                echo $this->getAttribute($context["item"], "menuCategory", array());
                echo "</div>

            ";
            } elseif ((            // line 18
$context["item"] == "menuItem")) {
                // line 19
                echo "
                <div class='row'>

                    <div class='small-11 columns item'>
                        <div>";
                // line 23
                echo $this->getAttribute($context["item"], "itemName", array());
                echo "</div>
                        <div>";
                // line 24
                echo $this->getAttribute($context["item"], "description", array());
                echo "</div>
                    </div>

                    <div class='small-1 columns price'>
                        <div>\$";
                // line 28
                echo $this->getAttribute($context["item"], "price", array());
                echo "</div>
                    </div>

                </div>

            ";
            }
            // line 34
            echo "
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 36
        echo "        </div>

    </div>
";
    }

    public function getTemplateName()
    {
        return "bar.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  99 => 36,  92 => 34,  83 => 28,  76 => 24,  72 => 23,  66 => 19,  64 => 18,  59 => 16,  56 => 15,  54 => 14,  51 => 13,  47 => 12,  38 => 6,  34 => 5,  31 => 4,  28 => 3,  11 => 1,);
    }
}
/* {% extends "_layout.html" %}*/
/* */
/* {% block content %}*/
/*     <div class='row content'>*/
/*         <h1 class='title'>{{ entry.boatingTitle }}</h1>*/
/*         {{ entry.content }}*/
/* */
/*         <hr>*/
/* */
/*         <div class='bar-menu'>*/
/* */
/*         {% for item in entry.menuItems.matrixFieldHandle %}*/
/* */
/*             {% if item == 'menuCategory' %}*/
/* */
/*                 <div class='category'>{{ item.menuCategory }}</div>*/
/* */
/*             {% elseif item == 'menuItem' %}*/
/* */
/*                 <div class='row'>*/
/* */
/*                     <div class='small-11 columns item'>*/
/*                         <div>{{ item.itemName }}</div>*/
/*                         <div>{{ item.description }}</div>*/
/*                     </div>*/
/* */
/*                     <div class='small-1 columns price'>*/
/*                         <div>${{ item.price }}</div>*/
/*                     </div>*/
/* */
/*                 </div>*/
/* */
/*             {% endif %}*/
/* */
/*         {% endfor %}*/
/*         </div>*/
/* */
/*     </div>*/
/* {% endblock %}*/
/* */
