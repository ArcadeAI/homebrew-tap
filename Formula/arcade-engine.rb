# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.0.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.15/arcade-engine_1.0.15_Darwin_x86_64.tar.gz"
      sha256 "acade9dafa38140f4f5127e03a4951cfef22ff4164955f99033a357c0c370ce6"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.15/arcade-engine_1.0.15_Darwin_arm64.tar.gz"
      sha256 "cf9ce5eb08d469053b8e479b4d0cabc7412f097001f457566175f889a3d5ee98"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.15/arcade-engine_1.0.15_Linux_x86_64.tar.gz"
        sha256 "bf823bf493361b2daeba24635360afad33e6f7ec7db3cde0a0ef2f2780271d34"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.15/arcade-engine_1.0.15_Linux_arm64.tar.gz"
        sha256 "53829bbce41a6b63ec32c4c49ec4dcf42b1b6a3d3b22f3b2f6280d891daf83e7"

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
