# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.20.1.tgz"
      sha256 "fe4fa9797f2e9d5bfec95af0a1c6467247b4c85b79d450660ccb3701bc1bd911"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.20.1.tgz"
      sha256 "9ec99d7de9eead19ff05bbcc8bf924a15b848d22280a75dad69761817633e5cd"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.20.1.tgz"
      sha256 "f9f75cdd4b4ff21a60b6f5f830cf60d6a30ee4f9c35269501122f27ebeef0ad1"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.20.1.tgz"
      sha256 "798d123b77b5cb50c0881e1df2992d1a6e2105ef5235581fae4204567538e5c2"
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
