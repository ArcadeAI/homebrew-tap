# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngineAT1210 < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.2.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.10/arcade-engine_1.2.10_Darwin_x86_64.tar.gz"
      sha256 "33277ef79806763f7d2478b9f60a4ab096437a97538961f7b875e098fd23c7ca"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.10/arcade-engine_1.2.10_Darwin_arm64.tar.gz"
      sha256 "32d8773c48f8e2823f0010f8e726e4a6b4c070f625f9c28ed1813060b8c16b97"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.10/arcade-engine_1.2.10_Linux_x86_64.tar.gz"
        sha256 "a7ad26480b89628ddf3722421fcf111815ea10fced9d0ba289da4d9ab19cf075"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.10/arcade-engine_1.2.10_Linux_arm64.tar.gz"
        sha256 "e2caab3c16b122b6964e89161c625878c25eb7d66f18043d5fdc5b8ef9a8122d"

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
