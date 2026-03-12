class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773273801-g50314c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773273801-g50314c/amp-darwin-arm64"
      sha256 "5a26f045ea934682b4adee3b41c54423bdfdbce750b554dd3c218b8ca4794067"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773273801-g50314c/amp-darwin-x64"
      sha256 "07e258a3de76ad60faed8d4d7bac78f7af1674f5745b16ece0f8df15ef7dcc7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773273801-g50314c/amp-linux-arm64"
      sha256 "38dbaaaa7f05087bd5613c237192f1072316b5cc3c7ccea8af36728dd7bf4da7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773273801-g50314c/amp-linux-x64"
      sha256 "dd816286e452763a159a55b9f770cc7516421524dd8c1b65368ae27b5520e9fd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
