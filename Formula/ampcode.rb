class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785454476-gc35fdf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785454476-gc35fdf/amp-darwin-arm64"
      sha256 "40af5d9719f70c5b0cb2bae4bbc05ab0665aa72da1d071ccecd4bc1eddf4da0b"
    else
      url "https://static.ampcode.com/cli/0.0.1785454476-gc35fdf/amp-darwin-x64"
      sha256 "711208a111d350058802d96aa402fe2b557ca079d2010e4ea4798204fdf08002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785454476-gc35fdf/amp-linux-arm64"
      sha256 "5681470aa626a437bab24a7d214411beb3dceb924cbc4fb14a062868d12b8050"
    else
      url "https://static.ampcode.com/cli/0.0.1785454476-gc35fdf/amp-linux-x64"
      sha256 "2901ef953ea0e2155e886cef58f08208c696c7c7331d56ab4f74eaf226b72b10"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
