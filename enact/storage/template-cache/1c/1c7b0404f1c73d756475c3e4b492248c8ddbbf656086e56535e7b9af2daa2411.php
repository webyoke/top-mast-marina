<?php

/* @enact/_app_layout.html */
class __TwigTemplate_27205d137e50c7dcb83d629832ed7d891257ddea43ca772d336e1d779a4aab3e extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo $this->getAttribute((isset($context["View"]) ? $context["View"] : null), "body", array());
        echo "
";
    }

    public function getTemplateName()
    {
        return "@enact/_app_layout.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }
}
/* {{ View.body }}*/
/* */
