class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791201662-g90a14c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791201662-g90a14c/amp-darwin-arm64"
      sha256 "7b88b43c66c44cdce88cf435d3b741030a1f40846526b1b13e73f9d0faf2f244"
    else
      url "https://static.ampcode.com/cli/0.0.1791201662-g90a14c/amp-darwin-x64"
      sha256 "df343f8bc165b8fb81d759c27ae83be75a3dd79f1e472bba2e7e2282b631908e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791201662-g90a14c/amp-linux-arm64"
      sha256 "855f7367d73c4ddb397f3b5f0057d98c320d03dced7abd5ab7f2b374e1349184"
    else
      url "https://static.ampcode.com/cli/0.0.1791201662-g90a14c/amp-linux-x64"
      sha256 "2a72ca0f183ae88c52724ca8d7ab44f4be78b78f921beb0bc2adfc3ae0c743f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
