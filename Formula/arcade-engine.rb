# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for ArcadeAI"
  homepage "https://arcade-ai.com/"
  version "0.0.12"

  on_macos do
    on_intel do
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v0.0.12/arcade-engine_0.0.12_Darwin_x86_64.tar.gz"
      sha256 "c362c35a679283d72b50ee48f9c7bdc3396abd59faf516a97ba28f5e86598935"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
      end
    end
    on_arm do
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v0.0.12/arcade-engine_0.0.12_Darwin_arm64.tar.gz"
      sha256 "bdb1ff5ea282d6ad6df20b3c14c54fd73403d93523c752a348078d882c58ad06"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v0.0.12/arcade-engine_0.0.12_Linux_x86_64.tar.gz"
        sha256 "0b7ec1992efae5589bb6003553aef4d163f886646afe9872fb9fd8ae129caf74"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v0.0.12/arcade-engine_0.0.12_Linux_armv6.tar.gz"
        sha256 "bb6f84e2079b6fac4f426ffc102c7a5942905484106e941a26771f4a2f554aa6"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v0.0.12/arcade-engine_0.0.12_Linux_arm64.tar.gz"
        sha256 "271c91e2de7153b4fae575eff1b660fa4b823c59262f314feab31a950485f6a1"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
        end
      end
    end
  end

  head "https://github.com/ArcadeAI/homebrew-tap.git"
end
