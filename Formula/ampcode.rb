class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779992355-g1ed5c4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779992355-g1ed5c4/amp-darwin-arm64"
      sha256 "93487471a55f8d2974e3a40456897c54a36d121e116b36092e99b1380a82d873"
    else
      url "https://static.ampcode.com/cli/0.0.1779992355-g1ed5c4/amp-darwin-x64"
      sha256 "87ffd714e91578ea2124b79dc175b062a86df99bd37932da2063e299816abc51"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779992355-g1ed5c4/amp-linux-arm64"
      sha256 "4178692e03314273ef88f12b558ef17921cc72e92110253c70ecda3157221b7f"
    else
      url "https://static.ampcode.com/cli/0.0.1779992355-g1ed5c4/amp-linux-x64"
      sha256 "59bd92ca1a5c3fb592d701cc09c955c19dd5b6dad45d03af19a80989b1e43024"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
