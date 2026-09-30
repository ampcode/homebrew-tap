class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790784043-gd80e47"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790784043-gd80e47/amp-darwin-arm64"
      sha256 "55216e59f9b435e22d9532f598119e0dd438cc70993fea2ad6d2cc9e4638e57d"
    else
      url "https://static.ampcode.com/cli/0.0.1790784043-gd80e47/amp-darwin-x64"
      sha256 "baf83a804481ffc6e299976480c82911d5f97bcec54d0580a5de0b051e6701b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790784043-gd80e47/amp-linux-arm64"
      sha256 "fd51d0066d8ca95c9993c66cd308e2e6eb0a994fcb4724d1fb6358b9fa14e069"
    else
      url "https://static.ampcode.com/cli/0.0.1790784043-gd80e47/amp-linux-x64"
      sha256 "d316868443dfc2bfc767793274db3edb25ae99508c97a4dc06f75a51c379a03d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
