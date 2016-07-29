<?php

/* _error/404 */
class __TwigTemplate_aeb41c4c396724bcfbff06aa57def74d058d943ce197fc0a9b61d9b9e4e36604 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("_layout.html", "_error/404", 1);
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
        // line 3
        $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "title", array(0 => ("404 Page not Found | " . $this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "siteName", array()))), "method");
        // line 1
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_content($context, array $blocks = array())
    {
        // line 6
        echo "    <h1 class='text-center'>404 Page not found</h1>
";
    }

    public function getTemplateName()
    {
        return "_error/404";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  34 => 6,  31 => 5,  27 => 1,  25 => 3,  11 => 1,);
    }
}
/* {% extends "_layout.html" %}*/
/* */
/* {% do enact.view.title('404 Page not Found | ' ~ enact.siteName) %}*/
/* */
/* {% block content %}*/
/*     <h1 class='text-center'>404 Page not found</h1>*/
/* {% endblock %}*/
/* */
