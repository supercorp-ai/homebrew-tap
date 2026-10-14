# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.17.0.tgz"
      sha256 "65db96a69303c81c4959665b72ccc27f660c9bf949b22a713e69d824a7ee486e"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.17.0.tgz"
      sha256 "378ea5c4bd2b8cc0380ed75c13a3b2aa61c8d324c1966cc9511fad1ab3149157"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.17.0.tgz"
      sha256 "cf1d3d2dae2cc06bffce7d8ce11d61d3028d4d54fb02bb30431999f73044675c"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.17.0.tgz"
      sha256 "854bb1a4d27efa2b7ab7cca0eb417bb52f67bfda5a95aa18308590e851a7c67f"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
