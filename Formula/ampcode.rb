class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778026469-gb6c251"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778026469-gb6c251/amp-darwin-arm64"
      sha256 "9130e991d9c6b69cbbdd75477e8b3c2f0d2894c7726a1bb5e4f1e1afc5541d60"
    else
      url "https://static.ampcode.com/cli/0.0.1778026469-gb6c251/amp-darwin-x64"
      sha256 "9a2e03670969440d526b93d8bfb552db69f7351f994cc6753dd68add35d8f1f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778026469-gb6c251/amp-linux-arm64"
      sha256 "9b8a5cf42ffdbb6a3600156d2cc3cb00896b25765825430430e3ce1af4110600"
    else
      url "https://static.ampcode.com/cli/0.0.1778026469-gb6c251/amp-linux-x64"
      sha256 "a4bd8ee998a26f121d7ddb760eaf5635635a41eb73916e096c85c446d8a26fbd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
