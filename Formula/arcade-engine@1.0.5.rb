# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngineAT105 < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.5/arcade-engine_1.0.5_Darwin_x86_64.tar.gz"
      sha256 "d2c53057e09f9d789832243fc5f9a7b04141c35d30378125584e4dff96a37d82"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.5/arcade-engine_1.0.5_Darwin_arm64.tar.gz"
      sha256 "c116ee30fc4752d8571963c5866e7b638653813a17ea942770aa3c85161023a0"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.5/arcade-engine_1.0.5_Linux_x86_64.tar.gz"
        sha256 "af90579d51c070a1e19e58e422476a4420c6ddb1367ab45c166162275dfd4de1"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.0.5/arcade-engine_1.0.5_Linux_arm64.tar.gz"
        sha256 "f9a72a7a3427f9d8ccf09c28b4e325eaa7e3945074742c4a994cab0ea9250a5d"

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
