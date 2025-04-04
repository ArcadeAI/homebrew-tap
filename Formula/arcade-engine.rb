# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.2.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.16/arcade-engine_1.2.16_Darwin_x86_64.tar.gz"
      sha256 "fa24f5fe2944ff5337cf01b447ccb4faadd9cd35c40ff560c0b70a6c9dd08464"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.16/arcade-engine_1.2.16_Darwin_arm64.tar.gz"
      sha256 "b09f0af99d74acde7a54f4baf66a95fb103584abd6bd2a65457530b809262dbf"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.16/arcade-engine_1.2.16_Linux_x86_64.tar.gz"
        sha256 "a1b417604350bf416d06f5160742146ad63ff63cfc911921ba3229c9e18a8b33"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.16/arcade-engine_1.2.16_Linux_arm64.tar.gz"
        sha256 "ba2c42fecd383f81f0f81af36b8e1fa5e6a933c7199671e31887500341d44896"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
  end

  head "https://github.com/ArcadeAI/homebrew-tap.git"
end
