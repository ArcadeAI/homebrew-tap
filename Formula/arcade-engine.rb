class ArcadeEngine < Formula
  desc "Arcade AI Engine."
  homepage "https://arcade-ai.com"
  head "https://github.com/ArcadeAI/arcade-ai.git"
  version "v0.0.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/engine/v0.0.12/arcade-engine_Darwin_arm64.tar.gz"
    elsif Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/engine/v0.0.12/arcade-engine_Darwin_x86_64.tar.gz"
    end
  end

  def install
    bin.install 'arcade-engine'
    pkgetc.install 'engine.yaml'
  end

  test do
    system "false"
  end
end
