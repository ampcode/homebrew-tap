class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790481634-gfcb5fc"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790481634-gfcb5fc/amp-darwin-arm64"
      sha256 "46a4eb19a07d73f07c2887df406761f3c30b480ad7aaca132879d2e8f3580dbf"
    else
      url "https://static.ampcode.com/cli/0.0.1790481634-gfcb5fc/amp-darwin-x64"
      sha256 "da33c36485cd52d007b75a3a58f29cdbb6aaa5a1365acce1ef19071d28ad7789"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790481634-gfcb5fc/amp-linux-arm64"
      sha256 "0ee8f5c1ac5b90ef5ec69f47a000de4522d315fedd1660241d605f06b6ae0099"
    else
      url "https://static.ampcode.com/cli/0.0.1790481634-gfcb5fc/amp-linux-x64"
      sha256 "a7626cfa49138462aeba917db0d6eeec5fbaa45c6cf9a836ca56eb4cf5f41f2c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
