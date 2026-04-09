class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775693160-g23ecff"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775693160-g23ecff/amp-darwin-arm64"
      sha256 "94dbe635facc44e200c1f9e45f4304deacae270862b76a6e2036a80913e42791"
    else
      url "https://static.ampcode.com/cli/0.0.1775693160-g23ecff/amp-darwin-x64"
      sha256 "cf10cc6b564751e56c25030384b818eb2a9ed523de7e75cd448b69facaa5418a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775693160-g23ecff/amp-linux-arm64"
      sha256 "a78bc919b6153035ab2471bb0a72a225ccb3092eb647a581ee34d38184774a45"
    else
      url "https://static.ampcode.com/cli/0.0.1775693160-g23ecff/amp-linux-x64"
      sha256 "c3074617b936c7c7f9ce8e5dbc69e9c63d9f38efb5269f42babd183549a5dd23"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
