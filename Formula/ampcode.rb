class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784579245-g674b85"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784579245-g674b85/amp-darwin-arm64"
      sha256 "c17a4c2607973bbae703aa5eadac3daf01ed4e26e0d7f2303e9e268eda800671"
    else
      url "https://static.ampcode.com/cli/0.0.1784579245-g674b85/amp-darwin-x64"
      sha256 "11c99c03e3f462cb548a44c57f8b2150e359e7d9e31a73a61d7c9429a4ce7a53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784579245-g674b85/amp-linux-arm64"
      sha256 "5a517a25e2139665b0d3fcfb7461b3ccc2f9c936e23f6a555d25f4660370ae08"
    else
      url "https://static.ampcode.com/cli/0.0.1784579245-g674b85/amp-linux-x64"
      sha256 "4b58c975f8884c497006d96a8715ed2a3cd4e10bcf9ed09ca174366945ce7c57"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
