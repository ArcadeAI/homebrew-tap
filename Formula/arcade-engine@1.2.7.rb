# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngineAT127 < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.2.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.7/arcade-engine_1.2.7_Darwin_x86_64.tar.gz"
      sha256 "2427af095ada1714e00f4334604945e5bd2264a1efdb881a984dd78b2db51748"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.7/arcade-engine_1.2.7_Darwin_arm64.tar.gz"
      sha256 "44b7b424b675e4ef457e034c40e4929e352e9b58973202ad57b52190cdae8082"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.7/arcade-engine_1.2.7_Linux_x86_64.tar.gz"
        sha256 "4f8d5dbd5a3c8ffc585796cf42e53903030aef76a03c945bbf40fe928462ac86"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.7/arcade-engine_1.2.7_Linux_arm64.tar.gz"
        sha256 "054d1e663f924add9bc154f4c2415801cbfe4d42b6f77f5ed969e09ee7a73cfb"

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
