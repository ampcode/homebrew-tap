class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779379714-g6b0ce2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779379714-g6b0ce2/amp-darwin-arm64"
      sha256 "bad57df571e5c756984c4c88f5232a847c8ea168706213a49c1ee8300e9b78b7"
    else
      url "https://static.ampcode.com/cli/0.0.1779379714-g6b0ce2/amp-darwin-x64"
      sha256 "29570077617c3756339813a201327fd176fc3605416293209c27c6d18e717948"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779379714-g6b0ce2/amp-linux-arm64"
      sha256 "9429f039eb8b6657e441e3a010739d76b6507eebf729d73e5a23b47f00e01649"
    else
      url "https://static.ampcode.com/cli/0.0.1779379714-g6b0ce2/amp-linux-x64"
      sha256 "ec3aed84afafd62fb26934f50c8f4310229aab2a8478325751f01a1c4458d4eb"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
