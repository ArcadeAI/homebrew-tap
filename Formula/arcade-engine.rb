# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.0.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.16/arcade-engine_1.0.16_Darwin_x86_64.tar.gz"
      sha256 "cd4dddb98b9528ee5c011f792eb58512b034cf84dea144284eadc877fea588c6"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.16/arcade-engine_1.0.16_Darwin_arm64.tar.gz"
      sha256 "60f6c98dde0b5a56cd11510251698fc73b4ebc89798eb60ca26e633f502a45ab"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.16/arcade-engine_1.0.16_Linux_x86_64.tar.gz"
        sha256 "58a9379f7ca80b156b926c4d6ed299790eb4bbb55595ae3f7343b5c6a554b9e9"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.16/arcade-engine_1.0.16_Linux_arm64.tar.gz"
        sha256 "561ef7642eb88d20ae1a8ccd9defae4d2db96d6ce250a4523909e43e6e018ab6"

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
