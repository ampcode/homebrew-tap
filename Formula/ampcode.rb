class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785387569-gffccd0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785387569-gffccd0/amp-darwin-arm64"
      sha256 "ea8dda4e4e3a60bfba1bbb52b57f0955d248b54ebbe6bfd8b2df46e24d6ee5fe"
    else
      url "https://static.ampcode.com/cli/0.0.1785387569-gffccd0/amp-darwin-x64"
      sha256 "ce5c7146136062ac96df25998952efd88b82db2cdbd49bfe13c120274e5011fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785387569-gffccd0/amp-linux-arm64"
      sha256 "0f4932ceb6289655e373d838d39be7b0eff08b276ccd849d400b4ccc510e26ec"
    else
      url "https://static.ampcode.com/cli/0.0.1785387569-gffccd0/amp-linux-x64"
      sha256 "7666fdbe82d49b864be8d2cdfcaa815b1f1ec5c4045a121243516d15aa62a276"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
