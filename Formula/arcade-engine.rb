# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.1.1/arcade-engine_1.1.1_Darwin_x86_64.tar.gz"
      sha256 "8fa0476f0806c222bdce4b45ab97bcb8558010d466c0bbfacd96efafe6feba0c"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.1.1/arcade-engine_1.1.1_Darwin_arm64.tar.gz"
      sha256 "760a80c4cbc9669da7483fe5c8ea2950256c5ef3590f18dbfa04a1339513e281"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.1.1/arcade-engine_1.1.1_Linux_x86_64.tar.gz"
        sha256 "db1aa81b50993fa42064309b66f5f143df890cff4edbc93fb8e9a31d39797521"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.1.1/arcade-engine_1.1.1_Linux_arm64.tar.gz"
        sha256 "919469d9a2b8a8b7a6830cd591077d3cb932ac5f30956318ac93370fede47344"

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
