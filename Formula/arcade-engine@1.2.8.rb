# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngineAT128 < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.2.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.8/arcade-engine_1.2.8_Darwin_x86_64.tar.gz"
      sha256 "10da41b100d4280599bec5862c127f21d979e0a6b5ca3c26710afc752fe3c70c"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.8/arcade-engine_1.2.8_Darwin_arm64.tar.gz"
      sha256 "356a2108026954aa37e9793a3c73f226dbd335624906f1af1382a6749a9a2544"

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
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.8/arcade-engine_1.2.8_Linux_x86_64.tar.gz"
        sha256 "8c6bc0a723e012df9d86164fa2926e1b4e08b7b026957c10f39214b828177b4a"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.8/arcade-engine_1.2.8_Linux_arm64.tar.gz"
        sha256 "02f35602396dc1478d626cb09ffb353bd0dcf8ad9c49a0431834e723d61a65db"

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
