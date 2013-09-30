<?php namespace xp\compiler\emit\jasmin;

use xp\compiler\emit\EmitterResult;
use xp\compiler\types\Types;
use io\streams\OutputStream;

/**
 * Compilation result from Jasmin emitter
 */
class Result extends \lang\Object implements EmitterResult {
  protected $source= null;
  protected $type= null;
  
  /**
   * Constructor.
   *
   * @param   xp.compiler.types.Types type
   * @param   xp.compiler.emit.source.Buffer source
   */
  public function __construct(Types $type, $source) {
    $this->type= $type;
    $this->source= $source;
  }
  
  /**
   * Write this result to an output stream
   *
   * @param   io.streams.OutputStream out
   */
  public function writeTo(OutputStream $out) {
    $out->write($this->source);
  }
  
  /**
   * Return type
   *
   * @return  xp.compiler.types.Types type
   */
  public function type() {
    return $this->type;
  }

  /**
   * Return file extension including the leading dot
   *
   * @return  string
   */
  public function extension() {
    return '.j';
  }
}
